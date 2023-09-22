#!/bin/bash

initdb -D /var/lib/postgres/data

pg_ctl -D "/var/lib/postgres/data" -o "-c listen_addresses=''" -w start

psql -U postgres -c "CREATE DATABASE todotasks"
psql -U postgres -c "ALTER ROLE postgres SET client_encoding TO 'utf8'"
psql -U postgres -c "ALTER ROLE postgres SET default_transaction_isolation TO 'read committed'"
psql -U postgres -c "ALTER ROLE postgres SET timezone TO 'UTC'"
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE todotasks TO postgres"

pg_ctl -v ON_ERROR_STOP=1 -D "/var/lib/postgres/data" -m fast -w stop

exec "$@"