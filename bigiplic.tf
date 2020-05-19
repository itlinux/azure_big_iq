#resource "bigip_common_license_manage_bigiq" "manange_bigip_license_pool" {
#  bigiq_address    = var.bigiq_ipaddress
#  bigiq_user       = var.bigiq_user
#  bigiq_password   = var.bigiq_pass
#  license_poolname = "MSP-LOADV4-license"
#  #assignment_type  = "MANAGED"
#}

# resource "bigip_common_license_manage_bigiq" "manage_bigip_license_pool" {
#   bigiq_address    = "70.37.110.17"
#   bigiq_user       = "admin"
#   bigiq_password   = "F5R0cks"
#   license_poolname = "MSP-LOADV4-license"
#   assignment_type  = "UNMANAGED"
#   unit_of_measure  = "Utility"
# }

# # MANAGED Regkey Pool
# resource "bigip_common_license_manage_bigiq" "manage_bigip_license_pool" {
#   bigiq_address    = var.bigiq_ipaddress
#   bigiq_user       = var.bigiq_user
#   bigiq_password   = var.bigiq_pass
#   license_poolname = "MSP-LOADV4-license"
#   assignment_type  = "UNMANAGED"
#   bigiq_token_auth = true
#   unit_of_measure  = "Utility"
# }

# # UNMANAGED Utility Pool
# resource "bigip_common_license_manage_bigiq" "unmanage_bigip_utility_pool" {
#   bigiq_address    = var.bigiq_ipaddress
#   bigiq_user       = var.bigiq_user
#   bigiq_password   = var.bigiq_pass
#   license_poolname = "utilitypool_name"
#   assignment_type  = "UNMANAGED"
#   unit_of_measure  = "yearly"
#   skukeyword1      = "BTHSM200M"
# }

# # UNREACHABLE Regkey Pool
# resource "bigip_common_license_manage_bigiq" "unreachable_bigip_pool" {
#   bigiq_address    = var.bigiq_ipaddress
#   bigiq_user       = var.bigiq_user
#   bigiq_password   = var.bigiq_pass
#   license_poolname = "regkey_pool_name"
#   assignment_type  = "UNREACHABLE"
#   mac_address      = "FA:16:3E:1B:6D:32"
#   hypervisor       = "azure"
# }
