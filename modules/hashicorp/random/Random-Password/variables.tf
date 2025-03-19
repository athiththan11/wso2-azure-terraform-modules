# -------------------------------------------------------------------------------------
#
# Copyright (c) 2025, WSO2 LLC. (https://www.wso2.com) All Rights Reserved.
#
# WSO2 LLC. licenses this file to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file except
# in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the
# specific language governing permissions and limitations
# under the License.
#
# --------------------------------------------------------------------------------------

variable "length" {
  default     = 20
  description = "The length of the generated password"
  type        = number
}

variable "special" {
  default     = true
  description = "Whether to include special characters in the generated password"
  type        = bool
}

variable "override_special" {
  default     = "_+.~^#*?"
  description = "Override the default special characters with a custom set"
  type        = string
}

variable "min_numeric" {
  default     = 1
  description = "The minimum number of numeric characters in the generated password"
  type        = number
}

variable "min_upper" {
  default     = 1
  description = "The minimum number of uppercase characters in the generated password"
  type        = number
}

variable "min_lower" {
  default     = 1
  description = "The minimum number of lowercase characters in the generated password"
  type        = number
}

variable "min_special" {
  default     = 1
  description = "The minimum number of special characters in the generated password"
  type        = number
}

variable "keepers" {
  default     = {}
  description = "A map of values that should be kept secret"
  type        = map(string)
}
