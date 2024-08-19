kubectl create secret generic postgres-secret --from-literal PGDATA=/k8s/postgres/pgdata --from-literal POSTGRES_DB=postgres --from-literal POSTGRES_PASSWORD=<ENTER_YOUR_PASSWORD> --from-literal POSTGRES_USER=<ENTER_YOUR_USER_NAME>

kubectl create configmap -n postgres postgres-config --from-file=replica-postgres.conf


verify below on database

SHOW wal_level;


SELECT * FROM pg_available_extensions WHERE name = 'pgoutput';
SELECT * FROM pg_available_extensions WHERE name = 'decoderbufs';


if required 

CREATE EXTENSION pgoutput;
CREATE EXTENSION decoderbufs;

SELECT * FROM pg_replication_slots;
SELECT * FROM pg_logical_replication;

