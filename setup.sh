docker pull rabbitmq
docker tag rabbitmq:latest localhost:5000/rabbitmq
docker push localhost:5000/rabbitmq

docker pull apache/airflow
docker tag apache/airflow:latest localhost:5000/airflow
docker push localhost:5000/airflow

