variable "proxmox_password" {
  description = "Proxmox user password"
  type        = string
  sensitive   = true
}

variable "proxmox_token_secret" {
  description = "Proxmox API token secret"
  type        = string
  sensitive   = true
  default     = "a1933c01-e1a4-4a1d-82df-bd0b35aa535f" # оставь пустым если используешь пароль
}

variable "ssh_key" {
  description = "SSH public key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQD2EGTDUjfbr2hPsk5TkWOfvaADuxn+cxJl/e7igWksAIeLw6oqLesu+6Q0unxJhV0weG3iE8Nr0AX4RKOtcH/4OHZOUhTmpm0pCVW9xSKm4iLO3hRPeA5w0sAR+npFfEYrFfQjE0T07wohexKhczlytYgtnoJ855lu+ST2MFJqxKy1SNW8rLDqkbtQhVa7alhVdDoi3hX2ClX8cS1vyCXc3uj8K05RAnTyRBOrSBkx3SECDMgKmsVAB3UIE2jW/TfGcCtWkFFVkSOu2hNwQ/VFbX2Xjv/o6G3Uisopc8+poMk0YesCCTabKGt1SePM+sYS3EJXmySQfm4mcVwGVq4GYyUKdUiIcfwTFQDfjtZU9Gy7z0lzZ1oIcKUCgZKQofnRnKZ07+Avx9TsoLsjIE3cfyvAycEtovKlxW5kmgb0uFjxp+s6vhrJbm1kpzSuCVCsqcFF1AvMuXNsJET08jFynzAjiFBDI+6Kjf0C/sOPW3BApDenvWvlmF9SaYvOYb4qzqfgcjmvRZpGbP9OopRguOBFHmwSX08Vt2qvVPHRaDo6PYg5YFotNP9ZqiF2ugzixmMM+S7oSAq/xMEpJW+rl3z4Ib9JFv5CPaEHkjy+MlZw4ld5L1PRAmSn73NcENRmr3HbGpYb/DafP8iYHhZa/uhH0Z1WgVB0vZ2i4WJNZQ== kurkin2005@bk.ru"
}