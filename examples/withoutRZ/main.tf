provider "vra7" {
	username = "${var.username}"
	password = "${var.password}"
	tenant = "optumprd01"
	host = "https://vra.ms.ds.uhc.com"
	insecure = "true"
}

module "terraform-vra-apache" {
	source = "git::https://github.optum.com/TerraformModules/terraform-vra-apache.git"
	environment = "DEV"
	network_zone = "intranet"
	interface_zone = "Intranet"
	cpu = "2"
	memory = "4096"
	datacenter = "ELR"
	askid = "UHGWM110-020897"
	dr_code = "DR-101"
	unixid_search = "jeast"
	unixid = "jeast"
	disk = "50"
	resilience_zone = "None"
	ebiz_description = "Need this for IAC purposes"
	ebiz_mui = "TIC"
	ebiz_mui_selection = "TIC"
	ebiz_apache_version = "2.4"
	LOB = "Optum ET"
	count = 1
}