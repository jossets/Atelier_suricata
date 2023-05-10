#
# 
#



./lan_create.sh && \
cd lab && docker-compose build && \
cd ../suricata && docker-compose build && \
cd ../lab && docker-compose down  
docker-compose rm -f 
docker rm ctf-sqli_attack ctf-sqli ctf-sqli_php ctf-sqli_mysql suricata3
docker-compose up -d
