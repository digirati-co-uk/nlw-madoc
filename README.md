# NLW Madoc
NLW configuration for Madoc. This will be used to build a fork-able template for other Madoc implementations once stable.

## Generating new admin password
Use this tool to generate a new hash:
```
$ bin/generate-password <new secure password>
```

Modify `database/sql/09-user.sql` and swap the password hash there for the one you've generated. 

## Generating new users
To generate a complete new user (sql) you can use this tool. It will output SQL that can be added to the `sql/09-user.sql` file and will be generated on boot.
```
$ bin/generate-user <username> <email> <password> [group]
```
The default group is `global_admin`.

## Search
For local development, currently (in pre-release v1.2.x) you have to create the search index manually. Once you have your containers running, you can simply run:
```
curl -X "PUT" "http://localhost:9203/jane-annotations"
```

and this will allow you to start using the statistics module and also start indexing the annotations. Elasticsearch is available at: http://localhost:9203/jane-annotations/_search
and the search interface (Jane Founda) is available at http://localhost:8103/.

## Annotation studio translations

If you want to add translations for a specific site for annotation studio you can create a file under:
```
translations/s/{site-slug}/annotation-studio.json
```
And then have a format that looks like this:
```
{
  "en": {
    "editor.edit": "Edit"
  },
  "cy": {
    "editor.edit": "Golygu"
  }
}
```
With the overrides. The originals can be found [here](https://github.com/digirati-co-uk/annotation-studio/tree/c98ceb3634e19681f7dbcd9e8987e43f2f771041/packages/annotation-redux/src/locale)
