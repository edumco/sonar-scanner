# Sonar Scanner for SonarQube

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/edumco/sonar-scanner)
![Docker Pulls](https://img.shields.io/docker/pulls/edumco/sonar-scanner)
![Docker Stars](https://img.shields.io/docker/stars/edumco/sonar-scanner)

This image allows you to scan your source code and report results to SonarQube server.

## Usage

Create a container with your source code folder attached

docker run -v /mysource:/mysource edumco/sonar-scanner

