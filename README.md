# Sonar Scanner 🐳

Scan your source code and report results to SonarQube server using a docker container.

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/edumco/sonar-scanner)](https://hub.docker.com/r/edumco/sonar-scanner)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/51a42d5302834235a744e68aa1a6a3e0)](https://www.codacy.com/manual/edumco/sonar-scanner?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=edumco/sonar-scanner&amp;utm_campaign=Badge_Grade)

## About

To see some use cases of Sonarqube see the [sonarqube-examples repository](https://github.com/edumco/sonarqube-examples)

## Usage

Create a container with your source code folder attached

```sh
docker run -v /mysource:/mysource edumco/sonar-scanner:latest
```

Inside the container execute the folowing command

```sh
    sonar-scanner \
    -Dsonar.host.url=YOUR_SONAR_URL \
    -Dsonar.projectKey=YOUR_PROJECT_KEY \
    -Dsonar.login==YOUR_USERNAQME \
    -Dsonar.password=YOUR_PASSWORD \
```

After scan execution the results are sent to the sonarqube server
