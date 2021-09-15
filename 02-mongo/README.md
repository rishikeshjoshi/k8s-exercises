# Deploy nginx to local cluster and expose it using ingress

1. Apply the workload to the created kubernetes cluster

        kubectl apply -f 02-mongo

2. Open `http://localhost:8081` to verify that mongo express is up and running

3. Clean up

        kubectl delete -f 02-mongo