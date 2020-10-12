package main

deny[msg] {
  input.apiVersion = "apps/v1"
  input.kind = "Deployment"
  not input.spec.template.spec.securityContext.runAsNonRoot = true
  msg = sprintf("runAsNonRoot of deployment %s is not set", [input.metadata.name])
}
