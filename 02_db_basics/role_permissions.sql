
-- Read‑only role for analysts
CREATE ROLE analyst NOINHERIT;
GRANT CONNECT ON DATABASE $(dbname) TO analyst;
GRANT USAGE ON SCHEMA geo TO analyst;
GRANT SELECT ON ALL TABLES IN SCHEMA geo TO analyst;
ALTER DEFAULT PRIVILEGES IN SCHEMA geo GRANT SELECT ON TABLES TO analyst;

-- ETL role with limited write access
CREATE ROLE etl NOINHERIT;
GRANT CONNECT, TEMPORARY ON DATABASE $(dbname) TO etl;
GRANT USAGE ON SCHEMA geo TO etl;
GRANT INSERT, UPDATE ON geo.poi TO etl;

-- Replace `$(dbname)` with your actual database name before running.
