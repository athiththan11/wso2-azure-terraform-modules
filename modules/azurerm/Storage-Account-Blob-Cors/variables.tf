# -------------------------------------------------------------------------------------
#
# Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 LLC. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "location" {
  description = "Azure location where the resource exists"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group in which the EventHub Namespace exists"
  type        = string
}

variable "account_tier" {
  default     = "Standard"
  description = "Defines the Tier to use for this storage account"
  type        = string
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account"
  type        = string
}

variable "tags" {
  description = "Tags to be used in resources"
  type        = map(string)
}

variable "default_action" {
  default     = "Deny"
  description = "The default action of allow or deny when no other rules match"
  type        = string
}

variable "delete_retention_days_policy" {
  default     = 7
  description = "The number of days that the blob should be retained, between 1 and 365 days"
  type        = number
}

variable "access_tier" {
  default     = "Hot"
  description = "The access tier for BlobStorage accounts"
  type        = string
}

variable "storage_account_network_rules_ip_rules" {
  default     = []
  description = "List of public IP or IP ranges in CIDR Format"
  type        = list(string)
}

variable "allow_nested_items_to_be_public" {
  default     = false
  description = "Allow or disallow nested items within this Account to opt into being public"
  type        = bool
}

variable "cors_allowed_header_list" {
  default     = ["*"]
  description = "List of allowed headers for CORS configs"
  type        = list(string)
}

variable "cors_allowed_methods_list" {
  default     = ["GET"]
  description = "List of allowed methods for CORS configs"
  type        = list(string)
}

variable "cors_allowed_origins_list" {
  description = "List of allowed origins for CORS configs"
  type        = list(string)
}

variable "cors_exposed_headers_list" {
  default     = ["*"]
  description = "List of exposed headers for CORS configs"
  type        = list(string)
}

variable "cors_max_age_in_seconds" {
  default     = 200
  description = "Max age in seconds for CORD configs"
  type        = number
}

variable "cross_tenant_replication_enabled" {
  default     = false
  description = "Is cross tenant replication enabled for the container."
  type        = bool
}
