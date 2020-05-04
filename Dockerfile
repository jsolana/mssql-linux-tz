FROM microsoft/mssql-server-linux:2017-CU13
ENV TZ=Europe/Madrid
RUN apt-get -y update && \
apt-get install -y tzdata && \
ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime && \
dpkg-reconfigure -f noninteractive tzdata

CMD [ "/opt/mssql/bin/sqlservr" ]