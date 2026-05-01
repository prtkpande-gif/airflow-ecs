#!/bin/bash

echo "Syncing DAGs from S3 bucket: ${S3_BUCKET}"
aws sync {S3_BUCKET} /airflow/dags --delete

echo "Starting Airflow webserver and scheduler..."
exec "$@"



