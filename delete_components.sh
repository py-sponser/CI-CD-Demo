kubectl delete deployment dj-dep psql-dep
kubectl delete service dj-svc psql-svc
kubectl delete configmap dj-config-map
kubectl delete secret dj-secret
sleep 15
docker images --filter="reference=dj-img" --quiet | xargs docker rmi 
docker images --filter="reference=psql-img" --quiet | xargs docker rmi