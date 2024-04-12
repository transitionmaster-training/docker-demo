#Azure login

az login

az account show

# Connect Aks Cluster

# Deployment
kubectl create -f 01-voting-app-deploy.yaml
kubectl create -f 02-voting-app-service.yaml
kubectl create -f 03-redis-deploy.yaml
kubectl create -f 04-redis-service.yaml
kubectl create -f 05-postgres-deploy.yaml
kubectl create -f 06-postgres-service.yaml
kubectl create -f 07-worker-app-deploy.yaml
kubectl create -f 08-result-app-deploy.yaml
kubectl create -f 09-result-app-service.yaml

# Verify the Deployment
kubectl get deploy
kubectl get pods
kubectl get svc

kubectl port-forward svc/voting-service 30004:80

kubectl port-forward svc/result-service 30005:80


# Clean up
kubectl delete --all pods
kubectl delete --all svc
kubectl delete --all deployments
