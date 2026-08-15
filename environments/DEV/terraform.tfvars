rg_name = {
    akamai_proj1={
        name="all_purpose_rg1"
        location="westus2"
        managed_by="Terraform"
    
   }
    akamai_proj2={
        name="all_purpose_rg2"
        location="westus2"
        managed_by="Terraform"
    }

 akamai_proj4={
        name="all_purpose_rg4"
        location="westus2"
        managed_by="Terraform"
    }
}

# virtual_network = {
  # akamai_proj1 = {
  #   name                = "jio_bang"               # to delete all the vnets
  #   resource_group_name = "all_purpose_rg"
  #   location            = "westus2"
  #   address_space       = ["10.143.0.0/16"]
  # }

  # akamai_proj2 = {
  #   name                = "jio_hyd"
  #   resource_group_name = "all_purpose_rg"
  #   location            = "westus2"
  #   address_space       = ["198.143.0.0/16"]
  # }
# }

# subnet = {
    # akamai_proj1={
    #     name="bang_subnet"
    #     resource_group_name="all_purpose_rg"
    #     virtual_network="jio_bang"
    #     address_prefixes=["10.143.1.0/24"]

    # }

    #  akamai_proj2={
    #     name="AzureBastionSubnet"
    #     resource_group_name="all_purpose_rg"
    #     virtual_network="jio_hyd"
    #     address_prefixes=["198.143.1.0/24"]

    # }
# }

# bastion_host = {
#   bationdev = {

#     name                 = "my_first_bastion_host"
#     resource_group_name  = "all_purpose_rg"
#     location             = "eastus"
#     subnet_name="AzureBastionSubnet"
#     virtual_network_name="jio_hyd"
#     pip_name="my_first_public_ip"
    
#   }
# }

# public_ip = {
#   IP1 = {
#     name                = "my_first_public_ip"
#     resource_group_name = "all_purpose_rg"
#     location            = "westus2"
#     allocation_method   = "Static"
#   }
#  IP2 = {
#     name                = "my_second_public_ip"
#     resource_group_name = "all_purpose_rg"
#     location            = "westus2"
#     allocation_method   = "Static"
#   }

# }


# azurerm_storage_account = {
#   sa1 = {
#     name                     = "tukzer1"
#     resource_group_name      = "all_purpose_rg"
#     location                 = "westus2"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#   }

#   sa2 = {
#     name                     = "tukzer2"
#     resource_group_name      = "all_purpose_rg"
#     location                 = "westus2"
#     account_tier             = "Standard"
#     account_replication_type = "GRS"
#   }
# }

# nic={

#   nic1={
# nic_name="nic1"
# resource_group_name="all_purpose_rg"
# location="westus2"
# private_ip_address_allocation="Dynamic"
# subnet_name="bang_subnet"
# virtual_network_name="jio_bang"
# pip_name="my_second_public_ip"

    
#   }
# }

# VM = {

#   Dev_VM= {
#     VM_name             = "Dev_VM"
#     resource_group_name = "all_purpose_rg"
#     location            = "westus2"

#     vm_size   = "Standard_D2s_v3"
#     publisher = "Canonical"                    # optional arguments
#     offer     = "0001-com-ubuntu-server-jammy" # optional arguments
#     sku       = "22_04-lts"                    # optional arguments
#     version   = "latest"

#     storage_os_disk_name = "webVM_disc_os"
#     caching              = "ReadWrite" # optional arguments
#     create_option        = "FromImage"
#     managed_disk_type    = "Standard_LRS"

#     computer_name                   = "hostname"
#     admin_username                  = "akhtarmahnaz"
#     admin_password                  = "Hammad@20221992"
#     disable_password_authentication = "false"
#   nic_name="nic1"

#   }
# }
