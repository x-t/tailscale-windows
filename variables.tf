variable "resource_group_location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "prefix" {
  type        = string
  default     = "xss-heaven"
  description = "Prefix of the resource name"
}

variable "username" {
  type        = string
  default     = "insanity"
  description = "Username used for the VM"
}

variable "password" {
  type        = string
  nullable    = true
  default     = null
  description = "Password used for the VM"
}

variable "vm_size" {
  type        = string
  default     = "Standard_DS1_v2"
  description = "VM size"
}

variable "vm_disk_size" {
  type        = number
  default     = 128
  description = "VM disk size"
}

variable "tailnet_key_lifetime" {
  type        = number
  default     = 2592000
  description = "Tailnet key lifetime in sec (default 30 days)"
}

variable "i_have_fixed_tailscale" {
  type = bool
  default = false
  description = "Read README"
}

variable "TAILSCALE_API_KEY" {}
variable "TAILSCALE_TAILNET" {}