

# VS Code install

https://code.visualstudio.com

## VsCode Extension:

- Ansible redhat.ansible

- GitLens: eamodio.gitlens

- Kubernetes: ms-kubernetes-tools.vscode-kubernetes-tools

- YAML: redhat.vscode-yaml

- Terraform: hashicorp.terraform

- zsh

## Other tools:

Git - https://git-scm.com/downloads

Gitlab account - https://gitlab.com/users/sign_up

Docker - https://www.docker.com/get-started


## Docker Image:

    docker pull hashicorp/terraform - https://hub.docker.com/r/hashicorp/terraform/

    docker pull willhallonline/ansible:latest - https://hub.docker.com/r/willhallonline/ansible

## Install Kubernetes CLI 

Kubectl - https://kubernetes.io/docs/tasks/tools/

**Install Dashboard**

    kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.4.0/aio/deploy/recommended.yaml

**kubectl proxy**

    kubectl apply -f dashboard-adminuser.yaml

    kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"

    kubectl proxy

    http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/.

  
