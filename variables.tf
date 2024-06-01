variable "application_name" {}
variable "location" {}
variable "java_cidr" {
  type = list(string)
}
variable "java_sub_cidr" {
  type = list(string)
}
variable "vm_size" {}
# variable "vm_username" {}
# variable "vm_pass" {}