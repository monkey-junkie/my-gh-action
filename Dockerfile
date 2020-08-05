# Container image that runs your code
FROM ubuntu:bionic

USER root
COPY entrypoint.sh /entrypoint.sh
ARG URL="https://github.com/returntocorp/semgrep/releases/download/v0.17.0/semgrep-v0.17.0-ubuntu-generic.sh"

RUN apt-get update && apt-get install -y sudo curl
RUN curl -Ls ${URL} | bash

ENTRYPOINT ["/entrypoint.sh"]