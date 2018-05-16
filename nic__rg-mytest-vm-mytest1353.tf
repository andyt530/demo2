resource "azurerm_network_interface" "rg-mytest__vm-mytest1353" {
	 name = "vm-mytest1353"
	 resource_group_name = "rg-at-01"
	 location = "uksouth"
	 network_security_group_id = "${azurerm_network_security_group.rg-mytest__vm-mytest1-nsg.id}"
	 enable_ip_forwarding = "false"
	 ip_configuration {
		 name = "ipconfig1" 
		 subnet_id = "${azurerm_subnet.rg-dwp-sbox-wa-dwk-core__sub-dwp-sbox-wa-dwk-fe01.id}"
		 private_ip_address_allocation = "Dynamic" 
		 public_ip_address_id = "${azurerm_public_ip.rg-mytest__vm-mytest1-ip.id}"
	}
}
