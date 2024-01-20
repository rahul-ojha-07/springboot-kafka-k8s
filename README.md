# springboot-kafka-k8s
Deploying kafka and springboot apps onto k8s


Need to create this  if configmaps are not accessible :

    ```kubectl create clusterrolebinding default-pod --clusterrole cluster-admin --serviceaccount=default:default```