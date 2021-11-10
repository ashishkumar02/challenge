variable "rg_name" {
       type        = string
       description = "Name of the resource group."
}
variable "location" {
       type        = string
       description = "Location of the resource group"
}

variable "environment" {
  type        = string
  description = "Name of the env "
}
variable "tags" {
  type        = map
}