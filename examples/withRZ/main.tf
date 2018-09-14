provider "vra7" {
	username = "${var.username}"
	password = "${var.password}"
	tenant = "optumprd01"
	host = "https://vra.ms.ds.uhc.com"
	insecure = "true"
}

module "terraform-vra-rhel6" {
	source = "git::https://github.optum.com/IAC/terraform-vra-rhel6.git"
	environment = "DEV"
	network_zone = "intranet"
	interface_zone = "Intranet"
	server_type = "APP"
	cpu = "2"
	memory = "4096"
	datacenter = "ELR"
	askid = "UHGWM110-020897"
	dr_code = "DR-101"
	unixid_search = "jeast"
	unixid = "jeast"
	disk = "50"
	resilience_zone = "RZ3"
	reservation_policy_name = "rz003mn053v2gc4c02gn"
	reservation_policy_id = "30c6c3a2-926b-4bbf-92b1-3be8400bcef0"
	count = 1
}