FROM postgres:latest

WORKDIR /tmp/

COPY psql-docker-entrypoint.sh .

RUN chmod +x /tmp/psql-docker-entrypoint.sh
ENTRYPOINT ["/tmp/psql-docker-entrypoint.sh"]