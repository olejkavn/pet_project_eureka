mvn clean install
docker build -t pet-project/eureka .
docker tag pet-project/eureka registry.digitalocean.com/pet-project/eureka
docker push registry.digitalocean.com/pet-project/eureka
kubectl delete -n default statefulset eureka
kubectl delete service eureka
kubectl delete service eureka-cluster-ip
kubectl create -f kube-manifests/eureka.yaml
kubectl get pods

