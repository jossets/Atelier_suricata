FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y software-properties-common 

RUN add-apt-repository ppa:oisf/suricata-stable && \
    apt-get update && \
    apt-get install -y suricata 

RUN apt-get install -y net-tools tcpdump

RUN ifconfig

COPY suricata.yaml /etc/suricata/suricata.yaml
COPY rules/my.rules /var/lib/suricata/rules/my.rules

CMD ["suricata", "-c", "/etc/suricata/suricata.yaml", "-i", "eth0"]
