# resource "scaleway_container_namespace" "main" {
#   name = "tereus"

#   environment_variables = {
#     "ENV"              = "PROD"
#     "LOG_LEVEL"        = "debug"
#     "S3_BUCKET"        = "tereus"
#     "S3_ENDPOINT"      = "ams3.digitaloceanspaces.com"
#     "S3_HTTPS_ENABLED" = true

#     # TODO: secrets
#   }

# }

# resource "scaleway_container" "main" {
#   name            = "tereus-transpiler-c-go"
#   namespace_id    = scaleway_container_namespace.main.id
#   registry_image  = "rg.fr-par.scw.cloud/tereus-registry/transpiler-c-go:latest"
#   port            = 8080
#   cpu_limit       = 140
#   memory_limit    = 256
#   min_scale       = 1
#   max_scale       = 1
#   timeout         = 600
#   max_concurrency = 80
#   privacy         = "private"
#   deploy          = true
# }
