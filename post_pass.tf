resource "azurerm_virtual_machine_extension" "changemypass" {
  depends_on           = [azurerm_linux_virtual_machine.virtualmachine]
  name                 = "changemypass"
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"
  count                = var.azurerm_instances
  virtual_machine_id   = azurerm_linux_virtual_machine.virtualmachine[0].id
  settings             = <<SETTINGS
{
  "commandToExecute": "bash -c 'tmsh modify auth user admin password ${random_password.dpasswrd.result}'"
}
SETTINGS
}
