terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "1.3.2"
    }
  }
}

provider "helm" {}

resource "helm_release" "dynatrace" {
  name = "dynatrace"
  repository = "https://raw.githubusercontent.com/Dynatrace/helm-charts/master/repos/stable"
  chart = "dynatrace-oneagent-operator"
  create_namespace = true
  namespace = "dynatrace"

  values = [
    "${file("values.yaml")}"
  ]

  set {
    name = "oneagent.apiUrl"
    value = "API_URL"
  }

  set {
    name = "secret.apiToken"
    value = "DYNATRACE_API_TOKEN"
  }

  set {
    name = "secret.paasToken"
    value = "PLATFORM_AS_A_SERVICE_TOKEN"
  }
}
