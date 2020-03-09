FROM node:lts-slim

ENV SONAR_DOWNLOADS=https://binaries.sonarsource.com/Distribution/sonar-scanner-cli

ENV SONAR_VERSION=4.3.0.2102

ENV ZIP=sonar-scanner-cli-${SONAR_VERSION}.zip

ENV SONAR_SERVER = "http:localhost:3000/"

ENV USERNAME = "sonarqube"

ENV PASSWORD = "sonarqube"

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget unzip ca-certificates && \
    wget ${SONAR_DOWNLOADS}/${ZIP} && \
    unzip /${ZIP} && \
    rm /${ZIP} && \
    apt-get purge -y wget unzip ca-certificates && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    echo 'deb http://ftp.de.debian.org/debian sid main' >> '/etc/apt/sources.list' && \
    apt-get -y update && \
    mkdir -p /usr/share/man/man1 && \
    apt-get -y install openjdk-11-jre-headless && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

CMD export PATH=$PATH:/sonar-scanner-${SONAR_VERSION}/bin && bash
