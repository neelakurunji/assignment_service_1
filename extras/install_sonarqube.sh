#!/bin/sh
# Author: Venkatesh Dharmapuri

docker pull sonarqube:6.7.5
docker volume create --name sonarqube_data
docker volume create --name sonarqube_logs
docker volume create --name sonarqube_extensions
docker run -itd --rm -p 9000:9000 -v sonarqube_extensions:/opt/sonarqube/extensions sonarqube:6.7.5

echo "SonarQube installation successful"