terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

                              


provider "proxmox" {
  pm_tls_insecure     = true
  pm_api_url          = var.proxmox_prod_url
  pm_user             = var.proxmox_prod_user
  pm_api_token_secret = var.proxmox_prod_secret_token
  pm_api_token_id     = var.proxmox_prod_tokenID
}

