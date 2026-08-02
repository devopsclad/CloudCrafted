
data "azurerm_network_interface" "data_nic" {
  for_each = var.VM
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}


resource "azurerm_virtual_machine" "VM" {
  for_each              = var.VM
  name                  = each.value.VM_name
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  network_interface_ids = [data.azurerm_network_interface.data_nic[each.key].id]
  vm_size               = each.value.vm_size
  # delete_os_disk_on_termination = true
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = each.value.publisher 
    offer     = each.value.offer     
    sku       = each.value.sku      
    version   = each.value.version   
  }

  storage_os_disk {
    name              = each.value.storage_os_disk_name
    caching           = each.value.caching # optional arguments
    create_option     = each.value.create_option
    managed_disk_type = each.value.managed_disk_type # optional arguments

  }

  os_profile {
    computer_name  = each.value.computer_name
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password

  }

  os_profile_linux_config {
    disable_password_authentication = each.value.disable_password_authentication
  }

}