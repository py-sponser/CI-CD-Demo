kubectl delete deployment dj-dep psql-dep
kubectl delete service dj-svc psql-svc
kubectl delete configmap dj-config-map
kubectl delete secret dj-secret
echo "[+] Waiting for Pods termination ..."
sleep 25
docker images --filter="reference=dj-img" --quiet | xargs docker rmi 
docker images --filter="reference=psql-img" --quiet | xargs docker rmi
echo "[+] K8s components have been deleted successfully."