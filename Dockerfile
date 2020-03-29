FROM ubuntu:18.04

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get -y -q --no-install-recommends install \
    wget \
    calibre

RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN /bin/bash -c "source ~/.bashrc"

RUN nvm install v12.16.1

RUN npm install -g gitbook-cli && gitbook fetch 3.2.3

CMD ["gitbook", "help"]
