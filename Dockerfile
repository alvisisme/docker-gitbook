FROM ubuntu:18.04

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get -y -q --no-install-recommends install \
    ca-certificates \
    wget \
    calibre

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION v12.16.1
RUN mkdir -p $NVM_DIR && wget -O- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm use $NODE_VERSION
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

RUN npm install -g gitbook-cli && gitbook fetch 3.2.3

CMD ["gitbook", "help"]
