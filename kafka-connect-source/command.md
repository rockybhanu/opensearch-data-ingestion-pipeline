## Run below command to crate generic secret with postgres credentials so debezium connector can connect with postgres 

kubectl -n kafka create secret generic postgres-source-connector-secret --from-file=postgres.properties

## Run below command to crate generic secret with jks file so opensource connector can connect with opensearch

kubectl -n kafka create secret generic opensearch-truststore-secret --from-file=esnode.jks