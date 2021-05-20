
#provider "infoblox" {}

resource "null_resource" "delay" {
  provisioner "local-exec" {
    command = "sleep 360"
  }
}



