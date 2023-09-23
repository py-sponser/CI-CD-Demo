kubectl delete deployment dj-dep psql-dep
kubectl delete service dj-svc psql-svc
kubectl delete configmap dj-config-map
kubectl delete secret dj-secret
echo "[+] Waiting for Pods termination ..."
sleep 25
docker image rm dj-img 2>/dev/null || echo "[-] Failed to delete 'dj-img' docker image." 
docker image rm psql-img 1>/dev/null || echo "[+] psql-img docker image is deleted successfully."
echo 
echo "[+] K8s components have been deleted successfully."