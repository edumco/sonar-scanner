# Sonar Scanner 🐳

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/edumco/sonar-scanner)

This image allows you to scan your source code and report results to SonarQube server.

To see some use cases of Sonarqube see the [sonarqube-examples repository](https://github.com/edumco/sonarqube-examples)

## Usage

On your project add a sonar**\*\*** file

    lkjsdlfkjldkjljkdfsljkdsflkj
    lkjhgflsdjkglkfjglskj
    hjsdklfjdslkjf
    lkjfsdlkdsjl

Create a container with your source code folder attached

```sh
docker run \
    -v /mysource:/mysource \
    -e SONAR.HOST=$VAR1 \
    -e SONAR.USER=$VAR2 \
    -e SONAR.PASSWORD=$VAR3 \
    edumco/sonar-scanner
```

After scan execution the results are sent to the sonarqube server
