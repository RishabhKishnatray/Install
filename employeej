#!/bin/bash

echo "{
  "database": "cassandra://172.17.0.3:9042/employee_db?username=scylladb&password=password"
}"
read -p "Enter the new Cassandra host and port (e.g., 192.168.1.100:9042): " NEW_HOST_PORT


JSON_FILE="/home/ubuntu/employee-api/migration.json"

# Check if the JSON file exists
if [ -f "$JSON_FILE" ]; then
  # Replace the host and port in the JSON file
  sed -i "s/172.17.0.3:9042/$NEW_HOST_PORT/g" "$JSON_FILE"
  echo "Updated $JSON_FILE with the new Cassandra host and port."
else
  echo "$JSON_FILE not found."
fi
