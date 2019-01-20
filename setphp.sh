#!/bin/bash
version=$1
echo 'changing Php Version to '$1;
###change version in env file
sed -i '.bak' "s/PHP_VERSION=.../PHP_VERSION=$1/g" '.env'
### Build fpm and cli for new version
docker-compose build php-fpm
docker-compose build workspace
