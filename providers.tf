terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tailscale = {
      source  = "tailscale/tailscale"
      version = "~>0.13"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "tailscale" {
  api_key = var.TAILSCALE_API_KEY
  tailnet = var.TAILSCALE_TAILNET
}