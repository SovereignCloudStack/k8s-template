package main

deny[msg] {
  input.apiVersion = "apps/v1"
  input.kind = "Deployment"
  not input.spec.template.spec.securityContext.runAsNonRoot

  msg = sprintf("runAsNonRoot of deployment %s/%s is not set", [input.metadata.namespace, input.metadata.name])
}
