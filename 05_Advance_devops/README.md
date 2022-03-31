# How to use HELM

## Install CLI:

https://helm.sh


## Install Chart:

https://artifacthub.io/packages/helm/prometheus-community/prometheus

```console

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm install my-prometheus prometheus-community/prometheus --version 15.8.0

```

## Create Chart

https://helm.sh/docs/chart_template_guide/getting_started/

```console

helm create mychart

helm install clunky-serval ./mychart

helm get manifest clunky-serval

```


# How to Use Kustomize

```console
Kustomize build env/prod | kubectl apply -f - 
```



# Queue

This project shows how to connect with [Pika](http://pika.github.com/) to CloudAMQP and both publish and subscribe messages.

    $ pip install -r requirements.txt

## Broker

    docker run -d --hostname my-rabbit --name rabbit2 -p 8080:15672 -p 5672:5672 rabbitmq:3-management

