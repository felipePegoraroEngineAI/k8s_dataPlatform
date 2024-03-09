# GitOps using ArgoCD

### install
```sh
brew install helm
brew install argocd
```

### repos
```sh
helm repo add argo https://argoproj.github.io/argo-helm
```

### build
```sh
terraform init
terraform apply
```

### configure [manual]
```sh
kubectl patch svc argocd-server -n gitops -p '{"spec": {"type": "LoadBalancer"}}'
kubectl get svc argocd-server -n gitops
kubectl -n gitops get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo


argocd login "174.138.109.30" --username admin --password "FWHsfwKjRmdOr2qN" --insecure
argocd cluster add "do-nyc1-pool-k8s"

kubectl apply -f git-repo-con.yaml -n gitops
```
