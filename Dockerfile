FROM digirati/madoc-platform:1.2.8

# Add our theme
ADD --chown=www-data:www-data ./nlw-madoc-theme /srv/omeka/themes/nlw-madoc-theme
ADD --chown=www-data:www-data ./nlw-madoc-theme /srv/omeka/themes/nlw-pcw-madoc-theme

# Add custom translations
ADD --chown=www-data:www-data ./translations/s/ /srv/omeka/translations/s/
ADD --chown=www-data:www-data ./translations/omeka/cy.mo /srv/omeka/application/language/cy.mo
ADD --chown=www-data:www-data ./translations/omeka/cy.po /srv/omeka/application/language/cy.po
ADD --chown=www-data:www-data ./translations/madoc/cy.mo /srv/omeka/translations/madoc/cy.mo
ADD --chown=www-data:www-data ./translations/madoc/cy.po /srv/omeka/translations/madoc/cy.po
ADD --chown=www-data:www-data ./translations/s/dpugh/navigation/cy.mo /srv/omeka/translations/s/dpugh/navigation/cy.mo
ADD --chown=www-data:www-data ./translations/s/dpugh/navigation/cy.po /srv/omeka/translations/s/dpugh/navigation/cy.po
ADD --chown=www-data:www-data ./translations/s/kyffin/navigation/cy.mo /srv/omeka/translations/s/kyffin/navigation/cy.mo
ADD --chown=www-data:www-data ./translations/s/kyffin/navigation/cy.po /srv/omeka/translations/s/kyffin/navigation/cy.po
ADD --chown=www-data:www-data ./translations/s/livingstone/navigation/cy.mo /srv/omeka/translations/s/livingstone/navigation/cy.mo
ADD --chown=www-data:www-data ./translations/s/livingstone/navigation/cy.po /srv/omeka/translations/s/livingstone/navigation/cy.po
ADD --chown=www-data:www-data ./translations/s/llgc/navigation/cy.mo /srv/omeka/translations/s/llgc/navigation/cy.mo
ADD --chown=www-data:www-data ./translations/s/llgc/navigation/cy.po /srv/omeka/translations/s/llgc/navigation/cy.po

# Add any other configuration needed.
