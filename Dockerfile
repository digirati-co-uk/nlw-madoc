FROM digirati/madoc-platform:9f0abea

# Add our theme
ADD --chown=www-data:www-data ./nlw-madoc-theme /srv/omeka/themes/nlw-madoc-theme

# Add any other configuration needed.
