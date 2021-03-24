
# this file is about initialization
# rg vars
number_rg = 1
rgname = "terraform-resources"
location = "northeurope"
tags = {
    owner = "Aime"
    profession = "IT Engineer"
}

# vnet vars
vnetname = "vnet-one"
adresspace = ["192.168.0.0/16","172.16.0.0/16"]

#subnet vars
nb_subnets = 2
subnet1 = "subnet"
subnets = ["172.16.0.0/24","172.16.1.0/24"]
address_prefix =["172.16.2.0/24"]


#vm vars 
n_interface_ids = "azurerm_network_interface.myterraformnic.id"
size = "Standard_DS1_v2"
disk_name = "myOsDisk"
caching ="ReadWrite"
publisher ="Canonical"
offer = "UbuntuServer"
sku = "18.04-LTS"
version1 ="latest"
vmname = "myvm"
computer_name = "hostname"
admin_username = "azureuser"
username = "azureuser"
algorithm ="RSA"
storage_account_type = "Premium_LRS"
nb_vms =2


#public Ips vars
name = "myPublicIP"

allocation_method  ="Dynamic"

#network interface vars
Nic_name ="myNIC"
config_name = "myNicConfiguration"
private_ip_address_allocation ="Dynamic"


