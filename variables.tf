variable "location" {
  description = "Region Azure du deploiement"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  type        = string
  default     = "rg-cr460-devoir1"
}

variable "vnet_name" {
  description = "Nom du reseau virtuel"
  type        = string
  default     = "vnet-cr460"
}

variable "vm_name" {
  description = "Nom de la machine virtuelle"
  type        = string
  default     = "vm-cr460"
}

variable "vm_size" {
  default = "Standard_B2pts_v2"
}

variable "admin_username" {
  description = "Utilisateur administrateur de la VM"
  type        = string
  default     = "azureuser"
}

variable "project_tag" {
  description = "Valeur du tag de gestion des couts (Projet)"
  type        = string
  default     = "DevoirCR460"
}

variable "keyvault_name" {
  description = "Nom du Key Vault (unique mondialement, 3-24 car., lettres/chiffres/tirets)"
  type        = string
  default     = "kv-cr460-sam497625"
}

variable "acr_name" {
  description = "Nom de l'Azure Container Registry (unique mondialement, minuscules/chiffres seulement)"
  type        = string
  default     = "acrcr460VaEtreChangePlusTard" # ecrase par le workflow GitHub Actions (-var)
}

variable "container_name" {
  description = "Nom du groupe de conteneurs (Azure Container Instances)"
  type        = string
  default     = "aci-cr460"
}

variable "container_dns_label" {
  description = "Etiquette DNS publique du conteneur (unique dans la region)"
  type        = string
  default     = "cr460-devoir1-sam487625"
}

variable "image_tag" {
  description = "Tag de l'image Docker dans l'ACR"
  type        = string
  default     = "latest"
}
