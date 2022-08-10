mvn clean install
docker build -t eureka .
docker tag eureka otymkovskyi/eureka
docker push otymkovskyi/eureka
kubectl delete -n default statefulset eureka
kubectl delete service eureka
#kubectl delete service eureka-cluster-ip
kubectl create -f kube-manifests/eureka.yaml
kubectl get pods

