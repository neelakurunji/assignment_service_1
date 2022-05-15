#!/bin/sh
# Author: Venkatesh Dharmapuri

docker pull jenkins/jenkins:latest
docker run -itd -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:latest

echo "Jenkins Installation Successful!"