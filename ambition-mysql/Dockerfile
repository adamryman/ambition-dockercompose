FROM mysql

ENV MYSQL_ROOT_PASSWORD=ambition MYSQL_DATABASE=ambition MYSQL_USER=ambition MYSQL_PASSWORD=ambition

COPY createTables.sql /docker-entrypoint-initdb.d/createTables.sql
