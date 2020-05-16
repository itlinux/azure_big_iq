# Create the virtual machine. Use the "count" variable to define how many
# to create.
resource "azurerm_linux_virtual_machine" "virtualmachine" {
  count                           = var.azurerm_instances
  name                            = title("${var.prefix}_machine_num_${count.index + 1}")
  admin_username                  = var.uname
  admin_password                  = random_password.dpasswrd.result
  computer_name                   = title("${var.specs[terraform.workspace]["comp_name"]}-${count.index + 1}")
  location                        = azurerm_resource_group.azmain.location
  resource_group_name             = azurerm_resource_group.azmain.name
  size                            = var.specs[terraform.workspace]["instance_type"]
  disable_password_authentication = false


  network_interface_ids = [
    element(azurerm_network_interface.Management.*.id, count.index),
    element(azurerm_network_interface.Untrust.*.id, count.index),
    element(azurerm_network_interface.Trust.*.id, count.index),
  ]

  # F5 resources
  source_image_reference {
    publisher = var.specs[terraform.workspace]["publisher"]
    offer     = var.specs[terraform.workspace]["offer"]
    sku       = var.specs[terraform.workspace]["sku"]
    version   = var.specs[terraform.workspace]["f5version"]
  }

  plan {
    name      = var.specs[terraform.workspace]["plan_name"]
    product   = var.specs[terraform.workspace]["product"]
    publisher = var.specs[terraform.workspace]["publisher"]
  }

  #Disk
  os_disk {
    name                 = "${var.prefix}-osdisk-${count.index}"
    storage_account_type = var.specs[terraform.workspace]["storage_type"]
    caching              = "ReadWrite"
  }

  #SSH key push into the VM
  admin_ssh_key {
    username   = var.uname
    public_key = file(var.public_key)
  }
}
