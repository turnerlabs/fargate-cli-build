FROM golang:1.10.1

RUN apt-get update
RUN apt-get -y upgrade

RUN go get github.com/golang/dep/cmd/dep
RUN go get github.com/mitchellh/gox
RUN go get github.com/tcnksm/ghr
RUN go get github.com/inconshreveable/mousetrap

# install aws-cli
RUN apt-get install --no-install-recommends -y python-pip && \
    rm -rf /var/lib/apt/lists/*
RUN curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py --user
RUN python -m pip install awscli

# install docker-compose
RUN curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
