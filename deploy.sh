docker build -t pioneerfromussr/web:latest -t
docker build -t pioneerfromussr/openvidu-server:latest -t
docker build -t pioneerfromussr/openvidu-server-kms:latest -t

docker push pioneerfromussr/web:latest
docker push pioneerfromussr/openvidu-server:latest
docker push pioneerfromussr/openvidu-server-kms:latest

kubectl apply -f k8s
kubectl set image deployments/web-deployment
    web=pioneerfromussr/web:latest
kubectl set image deployments/openvidu-server-deployment
    openvidu-server=pioneerfromussr/openvidu-server:latest
kubectl set image deployments/openvidu-server-kms-deployment
    openvidu-server-kms=pioneerfromussr/openvidu-server-kms:latest
