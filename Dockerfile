FROM digirati/madoc-platform

# Add our theme
ADD --chown=www-data:www-data ./nlw-madoc-theme /srv/omeka/themes/

# Add any other configuration needed.
