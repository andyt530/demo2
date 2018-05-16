resource "azurerm_route_table" "rg-dwp-sbox-wa-dwk-core__udr-dwp-sbox-wa-dwk-fe01" {
	 name = "udr-dwp-sbox-wa-dwk-fe01"
	 location = "uksouth"
	 resource_group_name = "rg-dwp-sbox-wa-dwk-core"
	 route { 
		 name = "route_to_sub-dwp-prd-ss-core-fw-waf-in" 
		 address_prefix = "10.86.146.96/28" 
		 next_hop_type = "VirtualAppliance" 
		 next_hop_in_ip_address = "10.86.146.69" 
	 } 
	 route { 
		 name = "route_to_internet" 
		 address_prefix = "0.0.0.0/0" 
		 next_hop_type = "Internet" 
	 } 
	 tags { 
		commissionedDate = "" 
		department = "WA-DWK" 
		environmentIdentifier = "SBOX" 
		environmentVersion = "NOTSET" 
		serviceOwner = "" 
	}
}
