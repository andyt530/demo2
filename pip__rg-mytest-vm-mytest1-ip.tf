resource "azurerm_public_ip" "rg-mytest__vm-mytest1-ip" {
	 name = "vm-mytest1-ip"
	 location = "uksouth"
	 resource_group_name = "${var.myrg}"
	 public_ip_address_allocation = "Dynamic" 
	 sku = "Basic" 
}
