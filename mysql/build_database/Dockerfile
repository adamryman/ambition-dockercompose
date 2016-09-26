FROM mysql

ENV MYSQL_ROOT_PASSWORD: ambition
ENV MYSQL_DATABASE: ambition
ENV MYSQL_USER: ambition
ENV MYSQL_PASSWORD: ambition

COPY ./docker-entrypoint-initdb.d/createTables.sql /docker-entrypoint-initdb.d/createTables.sql

VOLUME ./mysql/database /var/lib/mysql
