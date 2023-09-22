FROM postgres:latest

RUN psql -U postgres -c "CREATE DATABASE todotasks"
RUN psql -U postgres -c "ALTER ROLE postgres SET client_encoding TO 'utf8'"
RUN psql -U postgres -c "ALTER ROLE postgres SET default_transaction_isolation TO 'read committed'"
RUN psql -U postgres -c "ALTER ROLE postgres SET timezone TO 'UTC'"
RUN psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE todotasks TO postgres"


