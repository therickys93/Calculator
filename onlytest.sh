#!/bin/bash

docker-compose -f docker-compose.test.yml -p ci build
docker-compose -f docker-compose.test.yml -p ci up -d
docker logs -f ci_sut_1
docker wait ci_sut_1
if [[ $? -eq 0 ]]; then
    printf "All Tests are passing\n"
else
    printf "Some Tests are not passing\n"
fi
docker-compose -f docker-compose.test.yml -p ci kill
docker rm ci_sut_1
docker rmi ci_sut
