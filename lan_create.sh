#
#
#
#

exist=`docker network ls | grep ' sqliLAN '`
if [ $? -eq 1 ]; then
    echo "[+] Create sqliLAN"    
    docker network create \
    --driver=bridge \
    --subnet=192.168.16.0/24 \
    --ip-range=192.168.16.0/24 \
    --opt com.docker.network.bridge.name=sqliLAN \
    --internal \
    sqliLAN
else
    echo "[.] Found sqliLAN"
fi
