kubectl create namespace jaeger
helm repo add jaegertracing https://jaegertracing.github.io/helm-charts
helm repo update
helm install \
  jaeger jaegertracing/jaeger \
  -n jaeger \
  -f jaeger-values.yaml
kubectl apply -f jaeger-ingress.yaml
