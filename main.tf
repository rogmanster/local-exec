variable "super_secret" {}

resource "random_pet" "server" {
  prefix = var.super_secret
}

resource "null_resource" "delay" {
  provisioner "local-exec" {
    command = "sleep 360"
  }
}

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "env | grep TF_VAR_super_secret"
  }
}

output "super_secret" {
  value = var.super_secret
  sensitive   = true
}

output "super_secret_pet" {
  value = random_pet.server.id
}

