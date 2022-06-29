resource "scaleway_instance_server" "nsq" {
  name              = "tereus-nsq"
  type              = "DEV1-S"
  image             = "ubuntu_focal"
  enable_ipv6       = true
  enable_dynamic_ip = true
}


resource "scaleway_instance_server" "monit" {
  name              = "tereus-monit"
  type              = "DEV1-S"
  image             = "ubuntu_focal"
  enable_ipv6       = true
  enable_dynamic_ip = true
}
