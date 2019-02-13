# base image
FROM postgres:11.1-alpine

# run create.sql on init
COPY create.sql /docker-entrypoint-initdb.d/10-create.sql
