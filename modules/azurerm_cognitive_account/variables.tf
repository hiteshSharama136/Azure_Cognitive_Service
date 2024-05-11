variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "kind" {
  type        = string
  default     = "TextTranslation"
}

variable "custom_subdomain_name" {
  type        = string
  description     = "(Optional) The subdomain name used for token-based authentication. This property is required when network_acls is specified. Changing this forces a new resource to be created."
}

# variable "fqdns" {
#   type        = string
#   description     = "(Optional) List of FQDNs allowed for the Cognitive Account."
# }

# variable "network_acls" {
#   type        = string
#   description     = "(Optional) A network_acls block as defined below. When this property is specified, custom_subdomain_name is also required to be set."
# }

variable "outbound_network_access_restricted" {
  type        = string
  default     = "false"
}

variable "public_network_access_enabled" {
  type        = string
  default     = "true"
}

variable "sku_name" {
  type        = string
  description = " (Required) Specifies the SKU Name for this Cognitive Service Account. Possible values are F0, F1, S0, S, S1, S2, S3, S4, S5, S6, P0, P1, P2, E0 and DC0."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Specifies a mapping of tags which should be assigned to the Front Door Endpoint"
}