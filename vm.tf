variable "location" {
  default = "canadacentral"
}

variable "resource_group_name" {
  default = "rg-cr460-devoir1"
}

variable "vnet_name" {
  default = "vnet-cr460"
}

variable "vm_name" {
  default = "vm-cr460"
}

variable "vm_size" {
  default = "Standard_B2pts_v2"
}

variable "admin_username" {
  default = "azureuser"
}

variable "project_tag" {
  default = "DevoirCR460"
}

variable "keyvault_name" {
  default = "kv-cr460-sam497625"
}

variable "acr_name" {
  default = "acrcr460sam497625"
}

variable "container_name" {
  default = "aci-cr460"
}

variable "container_dns_label" {
  default = "cr460-devoir1-sam497625"
}

variable "image_tag" {
  default = "latest"
}