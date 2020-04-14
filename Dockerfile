FROM adoptopenjdk/openjdk14:debianslim-jre

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


RUN apt-get update && \
    curl -sL https://deb.nodesource.com/setup_13.x | bash - && \
    apt-get install -y --no-install-recommends nodejs && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

CMD export PATH=$PATH:/sonar-scanner-${SONAR_VERSION}/bin && sh
