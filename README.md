# hcd-docker-builder

>  docker build -t hcd:Release2.0.3 .
> 
$: hcd -u testhcd -P testhcd --testnet

### daemon run
* 1.hcd -u YOURUNIQUERPCUSERNAME -P YOURUNIQUERPCPASSWORD --testnet
* 2.hcd -u YOURUNIQUERPCUSERNAME -P YOURUNIQUERPCPASSWORD --testnet --miningaddr=YOURTESTNETADDRESS
* 3.hcctl -u YOURUNIQUEUSERNAME -P YOURUNIQUEPASSWORD --testnet setgenerate true
> docker run -d -p 12008:12008 -p 12009:12009 --name=hcd2.0.3 hcd:Release2.0.3 hcd -u testhcd -P testhcd --testnet
