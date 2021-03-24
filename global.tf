provider "azurerm" {
  version = "~>2.0.0"
  features{
    
  }
}

module "resourceG" {
    source = "./modules/rg"
    number_rg = var.number_rg
    rgname = var.rgname
    location = var.location
    tags     = var.tags
}

module "vnetOne" {
    source = "./modules/vnet"
    location = var.location
    tags     = var.tags
    vnetname = var.vnetname
    adresspace= var.adresspace
    rgname    = module.resourceG.nameoutput
}

module "subnetOne" {
    source = "./modules/subnet"
    subnet1 = var.subnet1
    vnetname = var.vnetname
    subnets = var.subnets
    nb_subnets = var.nb_subnets
    rgname = module.resourceG.nameoutput
    
}

module "publicip" {
    source = "./modules/public_ips"

    name =var.name
    location= var.location
    rgname = module.resourceG.nameoutput
    allocation_method =var.allocation_method
    tags= var.tags
}

module "n_interfaceOne" {
    source = "./modules/n_interface"
    name =var.name
    location =var.location 
    rgname =var.rgname
    subnet1_id = module.subnetOne.subnet1_id
    tags =var.tags
    pip_id    = module.publicip.pip_id
    private_ip_address_allocation =var.private_ip_address_allocation
}


module "vmOne" {
    source = "./modules/vm"
    algorithm =var.algorithm
    vmname    =var.vmname 
    location              =var.location
    nb_vms =var.nb_vms
    caching           =var.caching
    storage_account_type =var.storage_account_type
    publisher =var.publisher
    offer     =var.offer
    sku       =var.sku
    size  =var.size
    disk_name =var.disk_name
    version1   =var.version1
    computer_name  =var.computer_name 
    admin_username =var.admin_username
    username       =var.username
    tags =var.tags
    rgname = module.resourceG.nameoutput
    n_interface_ids = module.n_interfaceOne.n_interface_ids
    
}





