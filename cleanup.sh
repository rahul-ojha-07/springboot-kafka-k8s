#!/bin/bash
echo $PWD
cd $PWD
kubectl delete -f ./k8s
sleep 2
minikube image rm spring-boot-kafka:v1
mvn clean

