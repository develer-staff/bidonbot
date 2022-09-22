FROM golang

ENV SLACK_BOT_TOKEN $SLACK_BOT_TOKEN
ENV RECYCLE_LIST $RECYCLE_LIST
ENV VERSION 0.0.1-alpha

ADD https://github.com/develer-staff/bidonbot/releases/download/v${VERSION}/bidonbot_${VERSION}_Linux_x86_64.tar.gz /app/archive.tgz
WORKDIR /app
RUN tar xzf archive.tgz
CMD ./bidonbot
