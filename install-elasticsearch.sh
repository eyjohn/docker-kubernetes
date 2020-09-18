kubectl create namespace elasticsearch
helm repo add elastic https://helm.elastic.co
helm repo update
helm install \
  elasticsearch elastic/elasticsearch \
  -n elasticsearch \
  -f elasticsearch-values.yaml