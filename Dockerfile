#docker pull golang:1.10-stretch

FROM golang:1.10-stretch

RUN go get -u github.com/golang/dep/cmd/dep

RUN git clone https://github.com/HcashOrg/hcd $GOPATH/src/github.com/HcashOrg/hcd
WORKDIR $GOPATH/src/github.com/HcashOrg/hcd
RUN dep ensure
RUN go install . ./cmd/...

EXPOSE 12008
EXPOSE 12009
# CMD ["hcd -u testhcd -P testhcd --testnet"]
# hcd -u testhcd -P testhcd --testnet
# docker run -d -p 12008:12008 -p 12009:12009 --name=hcd docker:hcd hcd -u testhcd -P testhcd --testnet