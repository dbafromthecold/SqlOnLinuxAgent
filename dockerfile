FROM microsoft/mssql-server-linux:latest

ENV ACCEPT_EULA=Y

RUN apt-get update && apt-get install -y curl sudo

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

RUN curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server.list | sudo tee /etc/apt/sources.list.d/mssql-server.list

RUN apt-get update -y

RUN apt-get install -y mssql-server-agent
