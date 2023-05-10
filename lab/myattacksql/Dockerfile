FROM ubuntu:latest



RUN apt update && apt install -y sqlmap 
COPY startup.sh /startup.sh
RUN chmod a+x /startup.sh 


CMD /startup.sh
