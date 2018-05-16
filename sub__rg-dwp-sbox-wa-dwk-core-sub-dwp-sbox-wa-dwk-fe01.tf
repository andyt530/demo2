resource "azurerm_subnet" "rg-dwp-sbox-wa-dwk-core__sub-dwp-sbox-wa-dwk-fe01" {
	 name = "sub-dwp-sbox-wa-dwk-fe01"
	 virtual_network_name = "vnet-dwp-sbox-wa-dwk-core"
	 address_prefix = "10.88.128.0/24"
	 resource_group_name = "rg-dwp-sbox-wa-dwk-core"
	 network_security_group_id = "${azurerm_network_security_group.rg-dwp-sbox-wa-dwk-core__nsg-dwp-sbox-wa-dwk-fe01.id}"
	 service_endpoints = ["Microsoft.Storage","Microsoft.Sql"]
	 route_table_id = "${azurerm_route_table.rg-dwp-sbox-wa-dwk-core__udr-dwp-sbox-wa-dwk-fe01.id}"
}
