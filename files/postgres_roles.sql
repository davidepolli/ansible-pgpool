psql -p 5433
CREATE ROLE pgpool WITH LOGIN; 
CREATE ROLE repl WITH REPLICATION LOGIN; 
\password pgpool ****** 
\password postgres ****** 
\password repl ***** 
GRANT pg_monitor TO pgpool; 
\c template1
CREATE EXTENSION pgpool_recovery;