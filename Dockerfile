#docker pull golang:1.10-stretch

FROM golang:1.10-stretch

RUN go get -u github.com/golang/dep/cmd/dep

RUN git clone https://github.com/HcashOrg/hcd $GOPATH/src/github.com/HcashOrg/hcd
WORKDIR $GOPATH/src/github.com/HcashOrg/hcd
RUN git checkout Release2.0.3
RUN dep ensure
RUN go install . ./cmd/...

EXPOSE 12008
EXPOSE 12009
