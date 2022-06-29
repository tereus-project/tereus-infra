resource "scaleway_container_namespace" "main" {
  name = "tereus"
}

resource "scaleway_container" "main" {
  name            = "tereus-transpiler-c-go"
  namespace_id    = scaleway_container_namespace.main.id
  registry_image  = "rg.fr-par.scw.cloud/tereus/transpiler-c-go:latest"
  port            = 8080
  cpu_limit       = 140
  memory_limit    = 256
  min_scale       = 1
  max_scale       = 1
  timeout         = 600
  max_concurrency = 80
  privacy         = "private"
  deploy          = true
}
