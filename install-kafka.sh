kubectl create namespace kafka
helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
helm repo update
helm install --namespace kafka kafka incubator/kafka -f kafka-values.yaml
