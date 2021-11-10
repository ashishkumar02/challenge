
variable "environment" {
  type        = string
  description = "Name of the env "
}

variable "tags" {
  type        = map
   default = {
    "Cost Center":"Dev",
    "System Owner":"Ashish",
    "Application Manager":"Ashish",
    "Description":"Three tier architecture"
    }
}

variable "rg_name" {
       type        = string
       description = "Name of the resource group."
       default = "three-tier"
}
variable "location" {
       type        = string
       description = "Location of the resource group"
       default = "East US"
}
variable "cidr_block" {
       type        = string
       description = ""
       default = "192.168.0.0/16"
}

variable "websubnetcidr" {
       type        = string
       description = ""
       default = "192.168.1.0/24"
}
variable "appsubnetcidr" {
       type        = string
       description = ""
       default = "192.168.2.0/24"
}
variable "dbsubnetcidr" {
       type        = string
       description = ""
       default = "192.168.3.0/24"
}
variable "web_host_name"{
       type        = string
       description = ""
       default = "webserver"
}
variable "web_username" {
       type        = string
       description = ""
       default = "web_user"
}
variable "web_os_password" {
       type        = string
       description = ""
       default = "Web@123"
}
variable "app_host_name"{
       type        = string
       description = ""
}
variable "app_username" {
       type        = string
       description = ""
}
variable "app_os_password" {
       type        = string
       description = ""
}
variable "primary_database" {
       type        = string
       description = ""
}
variable "primary_database_admin" {
       type        = string
       description = ""
}
variable "primary_database_password" {
       type        = string
       description = ""
}
variable "primary_database_version" {
       type        = string
       description = ""
}




