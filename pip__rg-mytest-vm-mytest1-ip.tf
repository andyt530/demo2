resource "azurerm_public_ip" "rg-mytest__vm-mytest1-ip" {
	 name = "vm-mytest1-ip"
	 location = "uksouth"
	 resource_group_name = "rg-at-01"
	 public_ip_address_allocation = "Dynamic" 
	 sku = "Basic" 
}
