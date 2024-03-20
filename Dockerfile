FROM adoptopenjdk/openjdk16:alpine-jre

RUN apk add --no-cache nodejs-lts

ENV SONAR_DOWNLOADS=https://binaries.sonarsource.com/?prefix=Distribution/sonar-scanner-cli

ENV SONAR_VERSION=5.0.1.3006

ENV ZIP=sonar-scanner-cli-${SONAR_VERSION}.zip

RUN wget ${SONAR_DOWNLOADS}/${ZIP} && \
    unzip /${ZIP} && \
    rm /${ZIP}

ENV SONAR_PATH /sonar-scanner-${SONAR_VERSION}/bin

ENV PATH $SONAR_PATH:$PATH

ENTRYPOINT ${SONAR_PATH}/sonar-scanner
