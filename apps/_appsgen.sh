#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################

# Generates App List
ls -la /opt/communityapps/apps/ | sed -e 's/.yml//g' \
| awk '{print $9}' | tail -n +4 \
sed -e "/traefik/d" | \
sed -e "/image*/d" | \
sed -e "/_appsgen.sh/d" | \
sed -e "/_c*/d" | \
sed -e "/_a*/d" | \
sed -e "/_t*/d" | \
sed -e "/templates/d" | \
sed -e "/retry/d" | \
sed "/^test\b/Id" | \
sed -e "/nzbthrottle/d" | \
sed -e "/watchtower/d" | \
sed "/^_templates.yml\b/Id" | \
sed -e "/oauth/d" | \
sed -e "/dockergc/d" | \
sed -e "/pgui/d"
