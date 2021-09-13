# K8s exercises

The examples use the local k3d kubernetes cluster.

## Useful links:
- [Install k3d](https://k3d.io/v4.4.8/#installation)


## Deploy nginx to local cluster and expose it using ingress

1. Create a cluster with k3s

        # Create a k3d cluster and expose port 80 on the loadbalancer node to 8081 on the host
        k3d cluster create website-cluster -p "8081:80@loadbalancer"

2. Deploy the workload

        # Deploy to above cluster
        cd nginx
        kubectl apply -f workload

3. Open http://localhost:8081/ on the host and verify that nginx is up and running

