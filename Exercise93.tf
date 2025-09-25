resource "azurerm_resource_group" "group_example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "network_example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.group_example.location
  resource_group_name = azurerm_resource_group.group_example.name
}

resource "azurerm_subnet" "subnet_example" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.group_example.name
  virtual_network_name = azurerm_virtual_network.network_example.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "network_interface_example" {
  name                = "example-nic"
  location            = azurerm_resource_group.group_example.location
  resource_group_name = azurerm_resource_group.group_example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet_example.id
    private_ip_address_allocation = "Dynamic"
  }
}


resource "azurerm_linux_virtual_machine" "vm_nelson" {
  name                = "nelson-machine"
  resource_group_name = azurerm_resource_group.group_example.name
  location            = azurerm_resource_group.group_example.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.network_interface_example.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
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