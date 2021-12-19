variable "environment" {
  type        = string
  description = "Type of the environment eg. staging, test or dev"
}

variable "project-name" {
  type        = string
  description = "Name of the project"
}

variable "back-up" {
  type        = string
  description = "ex: Daily, Monthly, etc "
  default     = ""
}

variable "monitoring" {
  type        = string
  description = "ex: Enabled, Disabled, etc"
  default     = ""
}

variable "patching" {
  type        = string
  description = "ex: Enabled, Disabled, etc"
  default     = ""
}

variable "subscription-type" {
  type        = string
  description = "ex: application, poc, sbx, core"
}
