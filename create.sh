#!/usr/bin/env bash
# Mandatory Tools
DOCKER=`which docker`
if [ -z "$DOCKER" ];
then
    echo "'docker' was not found on your system." >&2
    exit 1
fi
DOCKERCOMPOSE=`which docker-compose`
if [ -z "$DOCKERCOMPOSE" ];
then
    echo "'docker-compose' was not found on your system." >&2
    exit 1
fi
echo "Reading config...." >&2
source ./bash_config
cd "$PROJECTNAME"
docker-compose up -d

#dev tools
# git clone https://github.com/interconnectit/Search-Replace-DB _srdb

chmod 777 _srdb

# get all repositories from [branch]
#plugins
cd wp-content/plugins
#gitclone1="git clone -b [branch] https://${PersonalAccessToken}@[plugin-repo]"
#$gitclone1

#themes
cd ../themes
#gitclone5="git clone -b [branch] https://${PersonalAccessToken}@[theme-repo]"
#$gitclone5

#$SHELL