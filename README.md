# CI-CD-Demo - Simple Todo App using Django

A simple Django PostgreSQL todo_tasks application project hosted using K8s minikube cluster.

---
[+] Overview:
- The django app depends on a docker image, the Dockerfile exists at project workdir.
- Postgres database server depends on a docker image, the Dockerfile exists at PsqlFiles within the project workdir.
- The cluster pulls the docker images locally.
---
[+] Installation:
- Make sure you have "minikube", "kubectl" installed and started on your system.
  - minikube start --driver docker
- git clone https://github.com/py-sponser/CI-CD-Demo.git
- cd CI-CD-Demo/
- ./create_components.sh will do everything for you so to have the project running within your cluster ;)
---
[+] There is also a script for deleting K8s components:
- ./delete_components.sh
- Note: you may find an error removing a docker image at the end, you need to remove it manually.
---
[+] Later on, Jenkins will be added to handle the CI/CD process.<br>
[+] Also, There'll be more addons such as using statefulsets, persistent volumes, ...

