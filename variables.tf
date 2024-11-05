variable "proxmox_prod_url" {
  type = string
}

variable "proxmox_prod_user" {
  type = string
}

variable "proxmox_prod_secret_token" {
  type      = string
  sensitive = true
}

variable "proxmox_prod_tokenID" {
  type = string
}

variable "public_ssh_key" {
  type      = string
  sensitive = true
}

#variable "cloud-init-password" {
#  type      = string
#  sensitive = true

#}