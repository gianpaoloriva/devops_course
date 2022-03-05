## Kubernetes Introduction

Apply all Yaml file like a video


    cd .\Kubernetes
    
    kubectl apply -f deployment.yaml

    kubectl port-forward deployment/devops-toolkit 8080:80

    kubectl proxy

    http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/.


thanks to https://github.com/vfarcic