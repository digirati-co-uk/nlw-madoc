FROM digirati/madoc-platform:bb6d5a4

# Add our theme
ADD --chown=www-data:www-data ./nlw-madoc-theme /srv/omeka/themes/nlw-madoc-theme

# Add any other configuration needed.
