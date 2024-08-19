## Run below command to crate secret with open source credentials - 

kubectl create secret generic opensearch-sink-connector-secret --from-file=opensearch.properties


## Run below command to crate topic for DLQ - 

kubectl exec -n kafka -it ramanuj-kafka-cluster-dual-role-0 -- bin/kafka-topics.sh --create --topic crm-cdc-customer-records-dlq --bootstrap-server ramanuj-kafka-cluster-kafka-bootstrap.kafka.svc.cluster.local:9092 --partitions 1 --replication-factor 1
