# K8s exercises

The examples use the local k3d kubernetes cluster created as below:

        # Map port 8081 on the host to port 80 on the load balancer
        k3d cluster create <cluster-name> -p "8081:80@loadbalancer" --agents=2

## Useful links:
- [Install k3d](https://k3d.io/v4.4.8/#installation)


## Exercises:
1. [Deploy nginx to local cluster and expose it using ingress.](./01-simple-nginx/README.md)
2. [Deploy MongoDB and MongoExpress and expose MongoExpress via ingress](./02-mongo/README.md)
3. [Deploy static website using nginx](TODO)