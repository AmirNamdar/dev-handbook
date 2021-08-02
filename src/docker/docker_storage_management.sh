#!/bin/bash

## space usage:
echo "Space used by Docker:"
docker system df

## clear not running objects 
#docker system prune -a

## clear dangling objects 
#docker system prune

## clear specific object type 
#docker <objectType> prune
