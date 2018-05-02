FROM golang:1.10.1

RUN apt-get update
RUN apt-get -y upgrade

RUN go get github.com/golang/dep/cmd/dep
RUN go get github.com/mitchellh/gox
RUN go get github.com/tcnksm/ghr
RUN go get github.com/inconshreveable/mousetrap
