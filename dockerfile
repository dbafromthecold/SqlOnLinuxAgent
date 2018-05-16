FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y curl sudo && apt-get install -y apt-transport-https

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

RUN curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list | tee /etc/apt/sources.list.d/mssql-server.list

RUN apt-get update -y

RUN apt-get install -y mssql-server

RUN sudo /opt/mssql/bin/mssql-conf set sqlagent.enabled true 

CMD /opt/mssql/bin/sqlservr
