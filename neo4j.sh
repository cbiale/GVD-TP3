#! /bin/bash

docker run --rm --name neo4j -p 7474:7474 -p 7687:7687 -v $PWD/data:/data neo4j
