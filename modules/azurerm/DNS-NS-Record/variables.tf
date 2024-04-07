# -------------------------------------------------------------------------------------
#
# Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 LLC. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

variable "record_name" {
  description = "The name of the NS record."
  type        = string
}

variable "dns_zone_name" {
  description = "The name of the DNS zone in which the record should be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the DNS zone exists."
  type        = string
}

variable "ttl" {
  description = "The Time To Live (TTL) of the DNS record in seconds."
  default     = 3600
  type        = number
}

variable "records" {
  description = "A list of NS records to be added."
  type        = list(string)
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}
