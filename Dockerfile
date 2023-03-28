FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install -y ca-certificates \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /runner

ADD https://dl.gitea.com/act_runner/main/act_runner-main-linux-amd64 runner
RUN chmod +x runner

COPY start.sh .
RUN chmod +x start.sh

ENTRYPOINT ["./start.sh"]