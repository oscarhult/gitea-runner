FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get upgrade -y \
  && apt install -y -qq --no-install-recommends \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /runner

ADD https://dl.gitea.com/act_runner/main/act_runner-main-linux-amd64 runner
RUN chmod +x runner

COPY start.sh .
RUN chmod +x start.sh

ENTRYPOINT ["./start.sh"]
