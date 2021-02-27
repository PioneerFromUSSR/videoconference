docker build -t kernelpanic33/web:latest -t
docker build -t kernelpanic33/openvidu-server:latest -t
docker build -t kernelpanic33/openvidu-server-kms:latest -t

docker push kernelpanic33/web:latest
docker push kernelpanic33/openvidu-server:latest
docker push kernelpanic33/openvidu-server-kms:latest

kubectl apply -f k8s
kubectl set image deployments/web-deployment
    web=kernelpanic33/web:latest
kubectl set image deployments/openvidu-server-deployment
    openvidu-server=kernelpanic33/openvidu-server:latest
kubectl set image deployments/openvidu-server-kms-deployment
    openvidu-server-kms=kernelpanic33/openvidu-server-kms:latest
