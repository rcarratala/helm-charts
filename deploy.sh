#!/bin/bash

helm upgrade --install bootstrap-projects bootstrap-projects

helm upgrade --install argocd-operator argocd-operator --set namespace=argocd

oc apply -n argocd -f argocd-install

helm upgrade --install parks-app parks-app
