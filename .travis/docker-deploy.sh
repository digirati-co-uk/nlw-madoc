#!/usr/bin/env bash

set -e;

function announce() {
    if [[ -z "$SLACK_WEBHOOK_URL" ]]; then
        echo -e "Slack is not set up, set SLACK_WEBHOOK_URL, skipping message.";
    else
        ANNOUNCE_TEXT='{"text": "'$*'", "link_names": 1}'
        curl -X POST -d ''"${ANNOUNCE_TEXT}"'' ${SLACK_WEBHOOK_URL}
    fi;
}

if [[ -z "$1" ]]; then
    echo -e "You must pass in a docker image tag to build";
    exit 0;
fi;

if [[ -z "$TRAVIS_BRANCH" ]]; then
    echo -e "\033[00;32m This should only be run from Travis";
    exit 1;
fi;

if [[ -z "$DOCKER_USERNAME" ]]; then
    echo -e "\033[00;32m Missing Docker username in env (DOCKER_USERNAME)";
    exit 1;
fi;

if [[ -z "$DOCKER_PASSWORD" ]]; then
    echo -e "\033[00;32m Missing Docker password in env (DOCKER_PASSWORD)";
    exit 1;
fi;

# Read first arg as the repo. (e.g. digirati/madoc-platform)
REPO_NAME="$1"

if [[ "$(docker images -q ${REPO_NAME} 2> /dev/null)" == "" ]]; then
    announce "Docker image was not built, failing build for commit ${TRAVIS_COMMIT}"
    echo -e "\033[00;32m Image was NOT built, failing the build";
    exit 1
fi;

# Login to Docker hub.
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Create short commit hash for tagging.
COMMIT_HASH="$(git rev-parse --short ${TRAVIS_COMMIT})"

# Tag..
docker tag ${REPO_NAME} ${REPO_NAME}:${COMMIT_HASH}
docker tag ${REPO_NAME} ${REPO_NAME}:${TRAVIS_BRANCH}

# Only tag latest on master.
if [[ "$TRAVIS_BRANCH" = "master" ]] && [[ "$TRAVIS_PULL_REQUEST" = "false" ]]; then
    docker tag ${REPO_NAME} ${REPO_NAME}:latest
fi;

# ..and push
docker push ${REPO_NAME}

# Only deploy when its a tag.
if [[ -n "$TRAVIS_TAG" ]]; then
    if [[ -z "ECS_CLUSTER" ]]; then
        echo "No ECS_CLUSTER configured, skipping deployment";
        exit 0;
    fi;

    if [[ -z "ECS_REGION" ]]; then
        echo "No ECS_REGION configured, skipping deployment";
        exit 0;
    fi;

    if [[ -z "ECS_SERVICE" ]]; then
        echo "No ECS_SERVICE configured, skipping deployment";
        exit 0;
    fi;

    echo
    echo "Deploying to ECS...";
    announce "Deploying ${TRAVIS_TAG} to ECS...";
    aws ecs update-service --cluster ${ECS_CLUSTER} --region ${ECS_REGION} --service ${ECS_SERVICE} --force-new-deployment

    echo
    echo "Waiting for services to stabilize...";
    aws ecs wait services-stable --cluster ${ECS_CLUSTER} --region ${ECS_REGION} --services ${ECS_SERVICE}

    announce "${TRAVIS_TAG} successfully deployed";
fi;
