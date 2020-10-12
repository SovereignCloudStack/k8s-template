package main

deny[msg] {
  input.apiVersion = "apps/v1"
  input.kind = "Deployment"
  input.spec.template.spec.containers[i].securityContext.privileged = true
  msg = sprintf("deployment %s: container %s is privileged", [input.metadata.name, input.spec.template.spec.containers[i].name])
}
