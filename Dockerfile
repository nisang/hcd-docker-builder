#docker pull golang:1.10-stretch
#docker pull golang:1.10.1-alpine3.7

FROM golang:1.10.1-alpine3.7
RUN apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && rm -rf /var/cache/apk/* \
        && /bin/bash && apk add git

RUN go get -u github.com/golang/dep/cmd/dep

RUN git clone https://github.com/HcashOrg/hcd $GOPATH/src/github.com/HcashOrg/hcd
WORKDIR $GOPATH/src/github.com/HcashOrg/hcd
RUN git checkout Release2.0.3
RUN dep ensure
RUN go install . ./cmd/...

EXPOSE 12008
EXPOSE 12009
EXPOSE 14009
EXPOSE 14008