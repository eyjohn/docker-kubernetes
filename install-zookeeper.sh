kubectl create namespace zookeeper
helm repo add incubator http://storage.googleapis.com/kubernetes-charts-incubator
helm repo update
helm install --namespace zookeeper zookeeper incubator/zookeeper -f zookeeper-values.yaml
