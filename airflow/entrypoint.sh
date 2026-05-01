#!/bin/bash

echo "Syncing DAGs from S3 bucket: ${S3_BUCKET}"
aws sync "s3://${S3_BUCKET}" /airflow/dags --delete

echo "Starting Airflow webserver and scheduler..."
exec "$@"



