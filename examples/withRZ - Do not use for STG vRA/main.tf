provider "vra7" {
	username = "${var.username}"
	password = "${var.password}"
	tenant = "optumprd01"
	host = "https://vra.ms.ds.uhc.com"
	insecure = "true"
}

module "terraform-vra-apache" {
	source = "git::https://github.optum.com/TerraformModules/terraform-vra-apache.git?ref=v.0.1.0"
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
	resilience_zone = "RZ3"
	reservation_policy_id = "30c6c3a2-926b-4bbf-92b1-3be8400bcef0"
	ebiz_description = "Need this for IAC purposes"
	ebiz_mui = "TIC"
	ebiz_mui_selection = "TIC"
	ebiz_apache_version = "2.4"
	LOB = "Optum ET"
	count = 1
}