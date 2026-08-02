module "rg_module" {
  source = "../../modules/azurerm_resource_group"
  rg_name=var.rg_name
  
}

module "module_vnet" {
  source = "../../modules/azurerm_virtual_network"
  depends_on = [ module.rg_module ]
  virtual_network=var.virtual_network
  
}

module "module_subnet" {
  source ="../../modules/azurerm_subnet"
  depends_on = [module.module_vnet,module.rg_module ]
  subnet=var.subnet

  
}

module "module_pip" {
  source = "../../modules/azurerm_public_ip"
  depends_on = [ module.rg_module ]
  public_ip=var.public_ip
 
  
  
}

# module "module_bastion" {
#   source = "../../modules/azurerm_bastion"
#   depends_on = [ module.rg_module,module.module_subnet,module.module_vnet,module.module_pip ]
#   bastion_host=var.bastion_host
  
# }

# module "module_sa" {
#   source = "../../modules/azurerm_storage_account"
#   depends_on = [ module.rg_module]
#   azurerm_storage_account=var.azurerm_storage_account
  
# }

module "module_nic" {
  source = "../../modules/azurerm_nic"
  depends_on = [ module.rg_module,module.module_pip,module.module_subnet]
  nic=var.nic
  
}

module "module_VM" {
  source = "../../modules/azurerm_virtual_machine"
  depends_on = [ module.module_nic,module.rg_module ]
  VM=var.VM
  
}

 
