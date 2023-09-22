CREATE USER sponser WITH PASSWORD 'sponser';
CREATE DATABASE todotasks;
ALTER ROLE sponser SET client_encoding TO 'utf8';
ALTER ROLE sponser SET default_transaction_isolation TO 'read committed';
ALTER ROLE sponser SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE todotasks TO sponser;