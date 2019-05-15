provider "scaleway" {
  region = "${var.region}"
  organization = "${var.organization}"
  token        = "${var.scw_token}"
}

data "scaleway_image" "chloe" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "chloe" {
  name  = "chloe"
  image = "${data.scaleway_image.chloe.id}"
  type  = "START1-S"
}

resource "scaleway_ip" "ip" {
  server = "${scaleway_server.chloe.id}"
}


resource "scaleway_volume" "chloe" {
  name       = "chloevolume"
  size_in_gb = 50
  type       = "l_ssd"        
}

