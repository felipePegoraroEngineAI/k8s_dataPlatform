data "digitalocean_kubernetes_versions" "ver" {}


resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = "pool-k8s"
  region  = "nyc1"
  version =  data.digitalocean_kubernetes_versions.ver.latest_version

  node_pool {
    name       = "node-mds1"
    size       = "s-4vcpu-8gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 3
    tags       = ["do-k8s"]

    labels = {
    
      node-type = "do-k8s"
    }

  }
}
