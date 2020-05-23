FROM adoptopenjdk/openjdk14:alpine-jre

RUN apk add --no-cache nodejs-lts

ENV SONAR_DOWNLOADS=https://binaries.sonarsource.com/Distribution/sonar-scanner-cli

ENV SONAR_VERSION=4.3.0.2102

ENV ZIP=sonar-scanner-cli-${SONAR_VERSION}.zip

RUN wget ${SONAR_DOWNLOADS}/${ZIP} && \
    unzip /${ZIP} && \
    rm /${ZIP}

ENV SONNAR_PATH /sonar-scanner-${SONAR_VERSION}/bin

ENV PATH $SONNAR_PATH/bin:$PATH

CMD ["sh"]
