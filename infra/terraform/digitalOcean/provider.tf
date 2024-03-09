terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.34.1"
    }
  }
}

provider "digitalocean" {
  # Configuration options
  token =  "dop_v1_c52eeb824f9f556e5831994d2eec434c8503f02a256d9e90280307b40fe1acd4"
}