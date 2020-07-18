FROM ubuntu

#RUN sudo apt-get update
RUN apt-get update  
RUN apt-get install -y ca-certificates
ADD server /server
ADD entrypoint.sh /entrypoint.sh
ADD docs /docs
WORKDIR /

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]

