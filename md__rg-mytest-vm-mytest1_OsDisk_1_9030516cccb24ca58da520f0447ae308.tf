resource "azurerm_managed_disk" "rg-mytest__vm-mytest1_OsDisk_1_at1" {
	 name = "vm-mytest1_OsDisk_1_at1"
	 location = "uksouth"
	 resource_group_name = "${var.myrg}"
	 disk_size_gb = "32"
	 os_type = "Linux"
	 image_reference_id = "/Subscriptions/632d724b-7fe7-4e63-9fc8-ccc21d9aa13d/Providers/Microsoft.Compute/Locations/uksouth/Publishers/RedHat/ArtifactTypes/VMImage/Offers/RHEL/Skus/7.4/Versions/7.4.2018010506"
	 create_option = "FromImage"
	 storage_account_type = "Premium_LRS"
}
