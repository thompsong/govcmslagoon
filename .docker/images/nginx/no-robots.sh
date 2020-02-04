#!/bin/sh
##
# Add robots.txt on all non production environments.
#

if [ ! "${LAGOON_ENVIRONMENT_TYPE}" == "production" ]; then
    printf "User-agent: *\nDisallow: /\n" > /"${APP_DIR:-app}"/"${WEBROOT:-web}"/robots.txt
fi
