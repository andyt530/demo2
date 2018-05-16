resource "azurerm_network_security_group" "rg-dwp-sbox-wa-dwk-core__nsg-dwp-sbox-wa-dwk-fe01" {
	 name = "nsg-dwp-sbox-wa-dwk-fe01"  
	 location = "uksouth"
	 resource_group_name = "rg-dwp-sbox-wa-dwk-core"
	 security_rule { 
		 name = "SecurityCenter-JITRule_-838343494_2A2380183DD74A759135DB6C37DBFBD4"  
              description = "ASC JIT Network Access rule for policy 'default' of VM 'vm-mytest1'."  
		 access = "Deny"  
		 priority = "1000"  
		 protocol = "*"  
		 direction = "Inbound"  
		 source_port_range = "*"  
		 source_address_prefix = "*"  
		 destination_port_range = "22"  
		 destination_address_prefix = "10.88.128.4"  
	}
	 tags { 
		commissionedDate = "" 
		department = "WA-DWK" 
		environmentIdentifier = "SBOX" 
		environmentVersion = "NOTSET" 
		serviceOwner = "" 
	}
}
