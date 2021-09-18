# Deploy nginx with a dummy sidecar container

The sidecar is an alpine container which uses a "dummy" script to create/update static content being served.

1. Apply the workload to the created kubernetes cluster

        kubectl apply -f 03-sidecar

2. Open `http://localhost:8081` to verify that nginx is up and running
    - Refresh and view the contents being updated

3. Clean up

        kubectl delete -f 03-sidecar