resource "azurerm_virtual_machine" "vm1" {
	 name = "${var.myvm}"
	 location = "uksouth"
	 resource_group_name = "${var.myrg}"
	 vm_size = "Standard_D2s_v3"
	 network_interface_ids = ["${azurerm_network_interface.nic1.id}"]
	 delete_data_disks_on_termination = "false"
	 delete_os_disk_on_termination = "false"
os_profile {
	computer_name = "${var.myvm}" 
	admin_username = "thomasa" 
}
storage_os_disk {
	name = "osdisk1" 
	caching = "ReadWrite" 
	create_option = "FromImage" 
	os_type = "Linux" 
}
storage_image_reference {
	 publisher = "RedHat"
	 offer = "RHEL"
	 sku = "7.4"
	 version = "latest"
}
boot_diagnostics {
	 enabled = "true"
	 storage_uri = "https://rgmytestdiag814.blob.core.windows.net/"
}
os_profile_linux_config {
	disable_password_authentication = "true" 
	ssh_keys {
		path = "/home/thomasa/.ssh/authorized_keys" 
		key_data = ""
	}
}
}
