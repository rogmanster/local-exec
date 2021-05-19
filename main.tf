terraform {
  required_providers {
    custom = {
      source = "usr/local/bin"
      version = "1.0.0"
    }
  }
}

provider "infoblox"{
  version="~> 1.0"
}

/*
resource "infoblox_a_record" "demo_record"{
  network_view_name="demo1"
  vm_name="test"
  cidr="10.0.0.0/24"
  ip_addr="10.0.0.1" //use the ip address used in IP allocation
  dns_view="default"
  zone="aa.com"
  tenant_id="test"
}*/

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
    command = "env"
  }
}

output "super_secret" {
  value = var.super_secret
  sensitive   = true
}

output "super_secret_pet" {
  value = random_pet.server.id
}

