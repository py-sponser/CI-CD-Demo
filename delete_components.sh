kubectl delete deployment dj-dep psql-dep
kubectl delete service dj-svc psql-svc
kubectl delete configmap dj-config-map
kubectl delete secret dj-secret
echo "[+] Waiting for Pods termination ..."
sleep 25
docker image rm psql-img
docker image rm dj-img
echo "[+] K8s components have been deleted successfully."