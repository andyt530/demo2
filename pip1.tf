resource "azurerm_public_ip" "pip1" {
	 name = "pip1"
	 location = "uksouth"
	 resource_group_name = "${var.myrg}"
	 public_ip_address_allocation = "Dynamic" 
	 sku = "Basic" 
}
