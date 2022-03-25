------------------------------ Configurações iniciais ------------------------------------------------------------
SET timezone='America/Fortaleza';

CREATE USER algalog WITH PASSWORD 'alga@log';

ALTER USER algalog WITH SUPERUSER;

CREATE DATABASE algalog WITH OWNER = algalog TABLESPACE = pg_default TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8' CONNECTION LIMIT = -1;

-- Criar schema e extensão no banco 'algalog'

\connect algalog

CREATE SCHEMA algalog AUTHORIZATION algalog;

GRANT ALL ON SCHEMA algalog TO algalog WITH GRANT OPTION;

CREATE EXTENSION unaccent SCHEMA algalog;
