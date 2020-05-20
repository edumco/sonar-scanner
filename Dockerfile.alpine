FROM adoptopenjdk/openjdk14:alpine-jre

ENV SONAR_DOWNLOADS=https://binaries.sonarsource.com/Distribution/sonar-scanner-cli

ENV SONAR_VERSION=4.3.0.2102

ENV ZIP=sonar-scanner-cli-${SONAR_VERSION}.zip

RUN wget ${SONAR_DOWNLOADS}/${ZIP} && \
    unzip /${ZIP} && \
    rm /${ZIP} && \
    rm -rf /var/cache/apk/*

RUN apk add --update-cache nodejs

CMD export PATH=$PATH:/sonar-scanner-${SONAR_VERSION}/bin && sh