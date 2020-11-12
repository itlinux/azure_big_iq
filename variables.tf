variable "azurerm_instances" {
  default = "1"
}

variable "uname" {
  default = "remo"
}

variable "prefix" {
  default = "remo"
}

variable "network_name" {
  default = "bigiq_network"

}
variable "static_ip" {
  default = ["10.0.10.4", "10.0.20.4", "10.0.30.5"]
}

variable "specs" {
  default = {
    default = {
      location      = "westus2"
      name_rg       = "demo_bigiq_rg"
      instance_type = "Standard_DS5_v2"
      environment   = "This env is using BIG-IQ"
      owner         = "Remo Mattei"
      f5version     = "7.1.000000"
      plan_name     = "f5-bigiq-virtual-edition-byol"
      offer         = "f5-big-iq"
      product       = "f5-big-iq"
      publisher     = "f5-networks"
      sku           = "f5-bigiq-virtual-edition-byol"
      storage_type  = "Premium_LRS"
      virtualnet    = ["10.0.0.0/16"]
      trust         = ["10.0.10.0/24"]
      untrust       = ["10.0.20.0/24"]
      mgmt          = ["10.0.30.0/24"]
      comp_name     = "mybigiq"
    }
    europe = {
      location      = "westeurope"
      name_rg       = "westeurope_rg"
      instance_type = "Standard_DS4_v2"
      environment   = "This env is using BIG-IQ"
      owner         = "Remo Mattei"
      f5version     = "7.1.000000"
      plan_name     = "f5-bigiq-virtual-edition-byol"
      offer         = "f5-big-iq"
      product       = "f5-big-iq"
      publisher     = "f5-networks"
      sku           = "f5-bigiq-virtual-edition-byol"
      storage_type  = "Premium_LRS"
      virtualnet    = ["10.0.0.0/16"]
      trust         = ["10.0.40.0/24"]
      untrust       = ["10.0.50.0/24"]
      mgmt          = ["10.0.60.0/24"]
      comp_name     = "mybigip"
    }
    west = {
      location      = "westus"
      name_rg       = "westus_rg"
      instance_type = "Standard_DS4_v2"
      environment   = "This env is using BIG-IQ"
      owner         = "Remo Mattei"
      f5version     = "7.1.000000"
      plan_name     = "f5-bigiq-virtual-edition-byol"
      offer         = "f5-big-iq"
      product       = "f5-big-iq"
      publisher     = "f5-networks"
      sku           = "f5-bigiq-virtual-edition-byol"
      storage_type  = "Premium_LRS"
      virtualnet    = ["10.0.0.0/8"]
      trust         = ["10.1.0.0/24"]
      untrust       = ["10.2.0.0/24"]
      mgmt          = ["10.3.0.0/24"]
      comp_name     = "mybigip"
    }
    central = {
      location      = "southcentralus"
      name_rg       = "big_iq_centralus_rg"
      instance_type = "Standard_DS4_v2"
      environment   = "This env is using BIG-IQ"
      owner         = "Remo Mattei"
      f5version     = "7.1.000000"
      plan_name     = "f5-bigiq-virtual-edition-byol"
      offer         = "f5-big-iq"
      product       = "f5-big-iq"
      publisher     = "f5-networks"
      sku           = "f5-bigiq-virtual-edition-byol"
      storage_type  = "Premium_LRS"
      virtualnet    = ["10.0.0.0/16"]
      trust         = ["10.0.10.0/24"]
      untrust       = ["10.0.20.0/24"]
      mgmt          = ["10.0.30.0/24"]
      comp_name     = "mybigiq"
    }
  }
}
