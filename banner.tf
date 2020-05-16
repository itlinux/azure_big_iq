resource "azurerm_virtual_machine_extension" "banner" {
  depends_on           = [azurerm_linux_virtual_machine.virtualmachine]
  name                 = "banner"
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"
  count                = var.azurerm_instances
  virtual_machine_id   = azurerm_linux_virtual_machine.virtualmachine[0].id
  settings             = <<SETTINGS
{
  "commandToExecute": "bash -c 'echo ${var.banner} >/etc/motd'"
}
SETTINGS
}
