# Kubeflow Pipeline (KFP) Manifests

This is recommmended approach to manage kubeflow pipeline lightweight
deployment's manifests.

Fork and add your customizations in this repo.

## Deploy and upgrade instructions

1. To deploy to an existing k8s cluster:
```
kubectl apply -k .
```

2. To upgrade to a newer KFP version:
edit `kustomization.yaml`
```
bases:
 - github.com/kubeflow/pipelines//manifests/namespaced-install?ref=${NEW_VERSION}
```

3. To apply the upgrade:
```
kubectl apply -k .
```
