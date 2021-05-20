terraform {
  required_providers {
    infoblox = {
      source = "my-host/my-namespace/infoblox"
    }
    null = {
      source = "hashicorp/null"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  required_version = ">= 0.13"
}
