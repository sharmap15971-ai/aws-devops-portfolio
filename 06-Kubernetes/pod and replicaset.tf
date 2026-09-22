comm-- vi pod1.yml

apiVersion: v1
kind: Pod
metadata:
  name: my-web-pod
  labels:
    app: web
spec:
  containers:
  - name: nginx-container
    image: nginx:latest
    ports:
    - containerPort: 80

2--kubectl apply -f pod.yaml

3 # showing ip-
kubectl get pod -o wide 

4- show pods
kubectl get pods

5- kubectl describe pod #pode name-- my-web-pod

6- Exec continer----- 
 kubectl exec -it my-web-pod -- /bin/bash

---------------------ReplicaSet----------------------------

1- nano replicaset.yml
2-code

apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: simple-ubuntu-rs
spec:
  replicas: 2
  selector:
    matchLabels:
      app: ubuntu-app
  template:
    metadata:
      labels:
        app: ubuntu-app
    spec:
      containers:
      - name: container-1
        image: ubuntu
        command: ["sleep", "infinity"]

      - name: container-2
        image: ubuntu
        command: ["sleep", "infinity"]


4-- kubectl apply -f filename

