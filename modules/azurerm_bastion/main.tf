data "azurerm_subnet" "data_subnet" {
  for_each = var.bastion_host
  name =each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
  
}

data "azurerm_public_ip" "data_pip" {
  for_each = var.bastion_host
  name = each.value.pip_name
  resource_group_name = each.value.resource_group_name
  
}

resource "azurerm_bastion_host" "bastion" {
  for_each            = var.bastion_host
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.data_subnet[each.key].id
    public_ip_address_id = data.azurerm_public_ip.data_pip[each.key].id
  }

}