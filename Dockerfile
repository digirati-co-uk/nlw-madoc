FROM digirati/madoc-platform:1.1.3

# Add our theme
ADD --chown=www-data:www-data ./nlw-madoc-theme /srv/omeka/themes/nlw-madoc-theme

# Add custom translations
ADD --chown=www-data:www-data ./translations/s/ /srv/omeka/translations/s/
ADD --chown=www-data:www-data ./translations/omeka/cy.mo /srv/omeka/application/language/cy.mo
ADD --chown=www-data:www-data ./translations/madoc/cy.mo /srv/omeka/translations/madoc/cy.mo
ADD --chown=www-data:www-data ./translations/s/war-navigation-cy.mo /srv/omeka/translations/s/war-tribunal-records/navigation/cy.mo

# Add any other configuration needed.
