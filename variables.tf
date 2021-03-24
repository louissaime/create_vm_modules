
# rg vars
variable "number_rg" {
    description = "this number of about resource group"
    type = string
}
variable "rgname" {}
variable "location" {}
variable "tags" {}

# vnet vars
variable "vnetname" {}
variable "adresspace" {}
variable "address_prefix" {}
#subnet vars
variable "subnet1" {}
variable "subnets" {}
variable "nb_subnets" {}



#public_ips vars 
variable "name" {}


variable "allocation_method" {}

#vm vars 
variable "nb_vms" {
  
}
variable "vmname" {}


variable "n_interface_ids" {}
variable "size" {}
variable "disk_name" {}
variable "caching" {}
variable "storage_account_type" {}
variable "publisher" {}
variable "offer" {}
variable "sku" {}
variable "version1" {}
variable "computer_name" {}
variable "admin_username" {}
variable "username" {}
variable "algorithm" {}


#network interface vars 

variable "private_ip_address_allocation"{}








