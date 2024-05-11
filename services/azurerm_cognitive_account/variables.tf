variable "arm_tenant_id" {
  type        = string
  description = "The tenant Id of azure provider"
}

variable "arm_subscription_id" {
  type        = string
  description = "The subscription Id of azure provider"
}

variable "arm_client_id" {
  type        = string
  description = "The client Id of azure provider spn"
}

variable "arm_client_secret" {
  type        = string
  sensitive   = true
  description = "The client secret of azure provider spn"
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "tags" {
  type = map(string)
}

variable "environment" {
  type        = string
  description = "The environment to deploy in"
  validation {
    condition     = var.environment == "dev" || var.environment == "qa" || var.environment == "prod" || var.environment == "devpoc" || var.environment == "uat"
    error_message = "The value for environment can only be \"dev\" or \"devpoc\" or \"qa\" or \"uat\" or \"prod\"!"
  }
}

variable "resource_group_name" {
  type = string
  description = " (Required) Specifies the name of the resource group where the Cognitive Services Account resides."
}

variable "instance_number" {
  type    = string
  default = "01"
}

variable "service_name" {
  type        = string
}

variable "kind" {
  type        = string
  default     = "TextTranslation"
}

# variable "custom_subdomain_name" {
#   type        = string
#   description     = "(Optional) The subdomain name used for token-based authentication. This property is required when network_acls is specified. Changing this forces a new resource to be created."
# }

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
  default     = "false"
}

variable "sku_name" {
  type        = string
  default     = "s0"
  description = " (Required) Specifies the SKU Name for this Cognitive Service Account. Possible values are F0, F1, S0, S, S1, S2, S3, S4, S5, S6, P0, P1, P2, E0 and DC0."
}

variable "vnet_resource_group" {
  type        = string
}

variable "vnet_name" {
  type        = string
}

variable "dns_zone_name" {
  type        = string
}

variable "dns_zone_rg" {
  type        = string
}

variable "endpoint_subnet_name" {
  type        = string
}