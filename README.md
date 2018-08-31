# hcd-docker-builder

### image
> docker rmi hcd:Release2.0.3
> docker pull golang:1.10-stretch
> docker pull golang:1.10.1-alpine3.7


### build

>  docker build -t hcd:Release2.0.3 .
> 
$: hcd -u testhcd -P testhcd --testnet

### daemon run
* 1.hcd -u YOURUNIQUERPCUSERNAME -P YOURUNIQUERPCPASSWORD --testnet
* 2.hcd -u YOURUNIQUERPCUSERNAME -P YOURUNIQUERPCPASSWORD --testnet --miningaddr=YOURTESTNETADDRESS
* 3.hcctl -u YOURUNIQUEUSERNAME -P YOURUNIQUEPASSWORD --testnet setgenerate true
> docker run -d -p 12008:12008 -p 12009:12009 --name=hcd2.0.3 hcd:Release2.0.3 hcd -u testhcd -P testhcd --testnet

> docker run -d -v /root/node1 -p 12008:12008 -p 12009:12009 -p 14009:14009 -p 14008:14008 --name=hcdnode1 hcd:Release2.0.3 hcd -u testhcd -P testhcd setgenerate true
> docker run -d -v /root/node2:/root/.hcd -p 12008:12008 -p 12009:12009 -p 14009:14009 -p 14008:14008 --name=hcdnode2 hcd:Release2.0.3 hcd -u testhcd -P testhcd setgenerate true