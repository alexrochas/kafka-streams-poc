FROM store/oracle/serverjre:8

ARG REPLICA

ENV REPLICA ${REPLICA}

USER root

# RUN apk add --no-cache libc6-compat

WORKDIR /usr/src/app

COPY . /usr/src/app

CMD ./gradlew bootRun
