#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################

# Generates App List
ls -la /opt/communityapps/apps/ | sed -e 's/.yml//g' \
| awk '{print $9}' | \
sed -i -e "/traefik/d" | \
sed -i -e "/image*/d" | \
sed -i -e "/_appsgen.sh/d" | \
sed -i -e "/_c*/d" | \
sed -i -e "/_a*/d" | \
sed -i -e "/_t*/d" | \
sed -i -e "/templates/d" | \
sed -i -e "/retry/d" | \
sed -i "/^test\b/Id" | \
sed -i -e "/nzbthrottle/d" | \
sed -i -e "/watchtower/d" | \
sed -i "/^_templates.yml\b/Id" | \
sed -i -e "/oauth/d" | \
sed -i -e "/dockergc/d" | \
sed -i -e "/pgui/d"
