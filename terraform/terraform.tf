terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.2.2"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.21.0"
    }
  }
  required_version = ">= 0.13"
}

provider "digitalocean" {
  # Configuration options
}
provider "scaleway" {
  zone = "fr-par-1"
}

terraform {
  backend "s3" {
    bucket                      = "tereus-terraform-state"
    key                         = "state.tfstate"
    region                      = "fr-par"
    endpoint                    = "https://s3.fr-par.scw.cloud"
    skip_credentials_validation = true
    skip_region_validation      = true
  }
}
