FROM golang:1.14.7

# go tools + aws cli + docker-compose
RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y unzip && \
    go get github.com/golang/dep/cmd/dep && \
    go get github.com/mitchellh/gox && \
    go get github.com/tcnksm/ghr && \
    go get github.com/inconshreveable/mousetrap && \
    curl -sfLo "awscliv2.zip" "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" && \
    unzip awscliv2.zip && ./aws/install && \
    curl -sfLo /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.26.2/docker-compose-`uname -s`-`uname -m` && \
    chmod +x /usr/local/bin/docker-compose