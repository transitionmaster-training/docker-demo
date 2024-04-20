
# <font color="red">Transition</font>

# Deploying NGINX Service and Deployment

## Step 1: Apply YAML Configuration

Apply the following YAML configuration to deploy NGINX Service and Deployment:
```yaml
# 01-nginx-svc-deploy.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx
        ports:
        - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  selector:
    app: nginx
  type: LoadBalancer
  ports:
    - name: nginxports
      protocol: TCP
      port: 80
      targetPort: 80
```

Execute below command
```console
kubectl apply -f 01-nginx-svc-deploy.yaml
```

## Step 2: Port Forwarding

Port forward the NGINX service to your local machine:

```console
kubectl port-forward service/nginx-service 9090:80
```

## Step 3: Verify NGINX service locally

Now you can access the NGINX service locally at http://localhost:9090.
 
 
