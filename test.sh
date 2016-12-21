#!/bin/bash
docker rm -f  myphp
docker run -d --name myphp  my/php
docker ps 
docker exec -it myphp php -m