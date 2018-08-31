docker pull golang:1.10-stretch

FROM golang:1.10-stretch

go get -u github.com/golang/dep/cmd/dep

git clone https://github.com/HcashOrg/hcd $GOPATH/src/github.com/HcashOrg/hcd
cd $GOPATH/src/github.com/HcashOrg/hcd
dep ensure
go install . ./cmd/...