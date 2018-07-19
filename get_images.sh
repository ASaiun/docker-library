images=(addon-resizer:1.8.1 coredns:1.1.3 etcd-amd64:3.2.18 exechealthz-amd64:1.2 flannel:v0.9.1-amd64 heapster-amd64:v1.5.0 k8s-dns-dnsmasq-nanny-amd64:1.14.5 k8s-dns-kube-dns-amd64:1.14.5 k8s-dns-sidecar-amd64:1.14.5 kube-aggregator-amd64:v1.9.0 kube-apiserver-amd64:v1.11.0 kube-controller-manager-amd64:v1.11.0 kube-discovery-amd64:1.0 kube-dnsmasq-amd64:1.4 kube-proxy-amd64:v1.11.0 kube-scheduler-amd64:v1.9.0 kubedns-amd64:1.9 kubernetes-dashboard-amd64:v1.8.1 pause-amd64:3.1)
for imageName in ${images[@]} ; do
  docker pull saiun/$imageName
  docker tag saiun/$imageName gcr.io/google_containers/$imageName
  docker rmi saiun/$imageName
done