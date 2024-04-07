location = "East US"
resource_group_name      = "terraform"
virtual_network_name     = "terraform_vnet"

#subnet_name              = "terraform_snet"
#subnet_address_prefix    = ["10.0.2.0/24"]

subnet_configurations = {
  "subnet1" = {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
  "subnet2" = {
    name             = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
  }
}


network_interface_name   = "terraform_nic"
vm_name                  = "terraform_vm"
vm_size                  = "Standard_F2"
admin_username           = "adminuser"
computer_name            = "my-vm"