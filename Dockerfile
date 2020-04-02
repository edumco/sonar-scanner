<<<<<<< HEAD
FROM debian:10-slim
=======
FROM node:13.12.0-buster-slim
>>>>>>> 0d978ba24391ac1d0dd1be1f2996e665ce524ad5

ENV SONAR_DOWNLOADS=https://binaries.sonarsource.com/Distribution/sonar-scanner-cli

ENV SONAR_VERSION=4.3.0.2102

ENV ZIP=sonar-scanner-cli-${SONAR_VERSION}.zip

RUN apt-get update && \
    apt-get install -y --no-install-recommends wget unzip ca-certificates && \
    wget ${SONAR_DOWNLOADS}/${ZIP} && \
    unzip /${ZIP} && \
    rm /${ZIP} && \
    apt-get purge -y wget unzip ca-certificates && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

RUN echo 'deb http://ftp.de.debian.org/debian sid main' >> '/etc/apt/sources.list' && \
    mkdir -p /usr/share/man/man1 && \
    apt-get -y update && \
    apt-get -y install --no-install-recommends openjdk-11-jre-headless && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*


RUN sudo apt-get install -y --no-install-recommends curl software-properties-common && \
    curl -sL https://deb.nodesource.com/setup_12.x | sudo bash - && \
    sudo apt-get install nodejs && \
    sudo apt-get purge -y curl && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash/", "export PATH=$PATH:/sonar-scanner-${SONAR_VERSION}/bin && bash"]
