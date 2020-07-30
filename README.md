# Deployment manifests for some application

## Repository content

This repository is intended to include all relevant configuration
and Kubernetes manifests for the deployment of some applications inside SCS.

## Repository layout

This repository contains kustomize bases which may be referenced by
kustomize overlays which in turn define the deployment of whole
environments/clusters.

## Automated smoke tests

In order to ensure that every component inside of SCS behaves as
expected, there should be simple smoke tests.
These tests are implemented using GitHub Actions/Workflows.


## Further information

This is the template repository which does not contain any actual
workload application.


