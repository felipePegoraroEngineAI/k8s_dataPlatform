#resource "digitalocean_domain" "dnsk" {
#  name = var.domain_name
#}
#
##Add an A record to your domain.
#resource "digitalocean_record" "gitops" {
#  domain = digitalocean_domain.dnsk.name
#  type   = "A"
#  name   = "gitops"
#  value  = var.pip-nginx
#}
#
#resource "digitalocean_record" "trino" {
#  domain = digitalocean_domain.dnsk.name
#  type   = "A"
#  name   = "trino2"
#  value  = var.pip-nginx
#}
#
#
#resource "digitalocean_record" "minio" {
#  domain = digitalocean_domain.dnsk.name
#  type   = "A"
#  name   = "minio"
#  value  = var.pip-nginx  
#}