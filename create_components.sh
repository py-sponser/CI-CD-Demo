cd PsqlFiles/ && docker build -t psql-img .
cd ../ && docker build -t dj-img .
kubectl apply -f dj-svc.yaml
kubectl apply -f psql-svc.yaml
kubectl apply -f dj-config-map.yaml
kubectl apply -f dj-secrets.yaml
kubectl apply -f psql.yaml
kubectl apply -f dj-app.yaml
