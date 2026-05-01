FROM apache/airflow:2.7.0

user root

run apt-get update && apt-get install -y \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

run curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && sudo ./aws/install

user airflow

workdir /opt/airflow

copy ./entrypoint.sh /entrypoint.sh
entrypoint ["/entrypoint.sh"]