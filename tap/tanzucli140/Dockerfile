FROM ubuntu:latest

ARG PIVNET

ENV PIVNET_TOKEN=$PIVNET

ADD src/tanzucli.sh tanzucli.sh

RUN chmod +x tanzucli.sh

RUN ./tanzucli.sh

ENTRYPOINT ["tail", "-f", "/dev/null"]
