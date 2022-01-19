# gitops-parks
Simple GitOps repository for deploy parks-app

## Deploy it fully automatic

```
./deploy.sh
```

## Step by Step

1. Generate the bootstrap namespace needed for the parks installation
```
helm upgrade --install bootstrap-projects bootstrap-projects
```

2. Install the ArgoCD operator within the Openshift Cluster
```
helm upgrade --install argocd-operator argocd-operator --set namespace=argocd
```

3. Install ArgoCD instance using the Operator
```
oc apply -n argocd -f argocd-install
```

4. Install the application of ArgoCD
```
helm upgrade --install parks-app parks-app
```


