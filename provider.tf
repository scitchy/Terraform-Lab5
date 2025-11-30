terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.2-rc05"
    }
  }
}

provider "proxmox" {
  pm_tls_insecure = true
  pm_api_url = "https://localhost:8006/api2/json"
  pm_user = "root@pam"
  pm_api_token_id = "root@pam!terraform"
  pm_api_token_secret = var.proxmox_token_secret
}