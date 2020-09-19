kubectl apply \
  -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.4/aio/deploy/recommended.yaml \
  -f kubernetes-dashboard-ingress.yaml
TOKEN=$(kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | awk '/^deployment-controller-token-/{print $1}') | awk '$1=="token:"{print $2}')
echo "Authentication token is: $TOKEN"