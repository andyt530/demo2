resource "azurerm_network_security_group" "rg-mytest__vm-mytest1-nsg" {
	 name = "vm-mytest1-nsg"  
	 location = "uksouth"
	 resource_group_name = "rg-at-01"
	 security_rule { 
		 name = "default-allow-ssh"  
		 access = "Allow"  
		 priority = "1004"  
		 protocol = "TCP"  
		 direction = "Inbound"  
		 source_port_range = "*"  
		 source_address_prefix = "*"  
		 destination_port_range = "22"  
		 destination_address_prefix = "*"  
	}
}
