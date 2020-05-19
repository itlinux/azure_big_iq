# provider "bigip" {
#   address  = var.specs[terraform.workspace].[azurerm_public_ip.pip.0.ip_address]
#   username = var.uname
#   password = var.specs[terraform.workspace].[random_password.dpasswrd.result]
# }
# provider "bigip" {
#   address  = var.specs[terraform.workspace].azurerm_public_ip.pip.0.ip_address
#   username = var.uname
#   password = var.specs[terraform.workspace].random_password.dpasswrd.result
# }
# provider "bigip" {
#   address  = "70.37.110.17"
#   username = "admin"
#   password = "BRu4moLy%H33"
# }

terraform {
  required_version = "> 0.12.0"
}

provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you are using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "azmain" {
  name     = var.specs[terraform.workspace]["name_rg"]
  location = var.specs[terraform.workspace]["location"]
  tags = {
    environment = var.specs[terraform.workspace]["environment"]
    owner       = var.specs[terraform.workspace]["owner"]
  }
}
