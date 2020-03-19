# Sonar Scanner for SonarQube

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/edumco/sonar-scanner)

This image allows you to scan your source code and report results to SonarQube server.

## Usage

Create a container with your source code folder attached

```sh
docker run -v /mysource:/mysource edumco/sonar-scanner
```
