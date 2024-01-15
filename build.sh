#!/bin/bash
echo $PWD
mvn clean install -DskipTests
minikube image build -t spring-boot-kafka:v1 .
kubectl apply -f ./k8s