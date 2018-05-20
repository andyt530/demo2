resource "azurerm_network_interface" "nic1" {
	 name = "nic1"
	 resource_group_name = "${var.myrg}"
	 location = "uksouth"
	 network_security_group_id = "${azurerm_network_security_group.nsg1.id}"
	 enable_ip_forwarding = "false"
	 ip_configuration {
		 name = "ipconfig1" 
		 subnet_id = "${azurerm_subnet.rg-dwp-sbox-wa-dwk-core__sub-dwp-sbox-wa-dwk-fe01.id}"
		 private_ip_address_allocation = "Dynamic" 
		 public_ip_address_id = "${azurerm_public_ip.pip1.id}"
	}
}
