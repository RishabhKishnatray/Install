#!/bin/bash

echo "scylladb:
  host: ["172.17.0.3:9042"]
  username: scylladb
  password: password
  keyspace: employee_db

redis:
  enabled: false
  host: 172.17.0.4:6379
  password: password
  database: 0"

CONFIG_FILE="/home/ubuntu/employee-api/config.yaml"

# user for input
read -p "Enter ScyllaDB host (e.g., 172.17.0.3:9042): " SCYLLA_HOST
read -p "Enter ScyllaDB username: " SCYLLA_USERNAME
read -s -p "Enter ScyllaDB password: " SCYLLA_PASSWORD

#read -p "Enter ScyllaDB keyspace: " SCYLLA_KEYSPACE


sed -i "s/host: \[\".*\"\]/host: [\"$SCYLLA_HOST\"]/" "$CONFIG_FILE"
sed -i "s/username: scylladb/username: $SCYLLA_USERNAME/" "$CONFIG_FILE"
sed -i "s/password: password/password: $SCYLLA_PASSWORD/" "$CONFIG_FILE"
#sed -i "s/keyspace: employee_db/keyspace: $SCYLLA_KEYSPACE/" "$CONFIG_FILE"
echo " Configuration file updated "
