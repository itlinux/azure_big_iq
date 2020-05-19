variable "azurerm_instances" {
}

variable "uname" {
}

variable "public_key" {
  default = "~/.ssh/openstack.pub"
}

variable "prefix" {
}

variable "network_name" {

}
variable "static_ip" {
  default = ["10.0.10.4", "10.0.20.4", "10.0.30.5"]
}

variable "bigiq_ipaddress" {
  default = "52.151.30.188"
}

variable "bigiq_user" {
  default = "admin"
}

variable "bigiq_pass" {
  default = "F5R0cks"

}

variable "specs" {
  default = {
    default = {
      location      = "westus2"
      name_rg       = "remo_bigip_rg"
      instance_type = "Standard_DS3_v2"
      environment   = "This env is using BIG-IP"
      owner         = "Remo Mattei"
      f5version     = "15.1.002000"
      plan_name     = "f5-big-ltm-1slot-byol"
      offer         = "f5-big-ip-byol"
      product       = "f5-big-ip-byol"
      publisher     = "f5-networks"
      sku           = "f5-big-ltm-1slot-byol"
      storage_type  = "Premium_LRS"
      virtualnet    = ["10.0.0.0/16"]
      trust         = ["10.0.10.0/24"]
      untrust       = ["10.0.20.0/24"]
      mgmt          = ["10.0.30.0/24"]
      comp_name     = "mybigip"
    }
    europe = {
      location      = "westeurope"
      name_rg       = "westeurope_rg"
      instance_type = "Standard_DS3_v2"
      environment   = "This env is using BIG-IP"
      owner         = "Remo Mattei"
      f5version     = "14.1.203001"
      plan_name     = "f5-big-ltm-1slot-byol"
      offer         = "f5-big-ip-byol"
      product       = "f5-big-ip-byol"
      publisher     = "f5-networks"
      sku           = "f5-big-ltm-1slot-byol"
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
      environment   = "This env is using BIG-IP"
      owner         = "Remo Mattei"
      f5version     = "14.1.203001"
      plan_name     = "f5-big-ltm-1slot-byol"
      offer         = "f5-big-ip-byol"
      product       = "f5-big-ip-byol"
      publisher     = "f5-networks"
      sku           = "f5-big-ltm-1slot-byol"
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
      instance_type = "Standard_DS3_v2"
      environment   = "This env is using BIG-IP"
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
variable "banner" {
  default = " 8888888888 888888888    F5 BOX   888888b    d88888b Y88b   d88P "
}
