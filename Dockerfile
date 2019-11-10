FROM openjdk:8-jdk-alpine
MAINTAINER Jochen Schalanda <jochen+docker@schalanda.name>

ENV JAPI_VERSION 2.4

# Build-time metadata as defined at http://label-schema.org
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.name="Java API Compliance Checker Alpine Docker Image" \
      org.label-schema.description="Java API Compliance Checker Docker image based on Alpine Linux" \
      org.label-schema.url="https://lvc.github.io/japi-compliance-checker/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/joschi/docker-japi-compliance-checker" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0" \
      com.microscaling.docker.dockerfile="/Dockerfile" \
      com.microscaling.license="MIT"

VOLUME /workspace
WORKDIR /workspace

RUN apk add --no-cache make perl
RUN wget -q -O - "https://github.com/lvc/japi-compliance-checker/archive/${JAPI_VERSION}.tar.gz" | tar -C /tmp -xzf - && \
  cd "/tmp/japi-compliance-checker-${JAPI_VERSION}" && \
  make install && \
  rm -rf "/tmp/japi-compliance-checker-${JAPI_VERSION}"

ENTRYPOINT ["japi-compliance-checker"]
