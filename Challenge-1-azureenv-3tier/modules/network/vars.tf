variable "resource_group" {

}
variable "location" {

}
variable "cidr_block" {

}
variable "websubnetcidr" {

}
variable "appsubnetcidr" {

}
variable "dbsubnetcidr" {
    
}

variable "environment" {
  type        = string
  description = "Name of the env "
}
variable "tags" {
  type        = map
}