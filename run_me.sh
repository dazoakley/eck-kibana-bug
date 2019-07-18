!# /bin/bash

minikube start --cpus 4 --memory 8192
minikube addons enable ingress

kubectl apply -f all-in-one.yaml
kubectl apply -f es.yaml
kubectl apply -f kibana.yaml
kubectl apply -f ingress.yaml

MINIKUBE_IP=$(minikube ip)
PASSWORD=$(kubectl get secret quickstart-elastic-user -o=jsonpath='{.data.elastic}' | base64 --decode)

echo "please add '$MINIKUBE_IP kibana.info' to /etc/hosts, then open http://kibana.info in a browser."
echo "username: elastic"
echo "password: $PASSWORD"

