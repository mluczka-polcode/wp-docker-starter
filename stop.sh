#!/usr/bin/env bash
echo "Reading config...." >&2
source bash_config
cd "$PROJECTNAME"
docker-compose stop

#$SHELL