/*
resource "azurerm_resource_group" "terraform" {
  name     = var.resource_group_name
  location = "East US"
}

resource "azurerm_virtual_network" "terraform_vnet" {
  name                = var.virtual_network_name
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = azurerm_resource_group.terraform.name
}

resource "azurerm_subnet" "terraform_subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.terraform.name
  virtual_network_name = azurerm_virtual_network.terraform_vnet.name
  address_prefixes     = var.subnet_address_prefix
}

resource "azurerm_network_interface" "terraform_nic" {
  name                = var.network_interface_name
  location            = "East US"
  resource_group_name = azurerm_resource_group.terraform.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.terraform_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "terraform_vm" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.terraform.name
  location            = "East US"
  size                = var.vm_size
  admin_username      = var.admin_username
  computer_name       = var.computer_name
  network_interface_ids = [
    azurerm_network_interface.terraform_nic.id,
  ]

  admin_ssh_key {
    username   = var.admin_username
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
*/
