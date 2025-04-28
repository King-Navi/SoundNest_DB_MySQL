FROM mysql:8.0

COPY ./01-init.sql /docker-entrypoint-initdb.d/01-schema.sql
COPY ./02-init-data.sql /docker-entrypoint-initdb.d/02-init-data.sql
