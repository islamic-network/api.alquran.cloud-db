FROM percona:5.7

ENV MYSQL_USER "someUser"
ENV MYSQL_PASSWORD "somePassword"
ENV MYSQL_DATABASE "someDb"

EXPOSE 3306

# Copy and Insert DB Backup
ADD master.sql.tar.gz /docker-entrypoint-initdb.d/
