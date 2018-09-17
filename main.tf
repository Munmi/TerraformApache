resource "vra7_resource" "sconfig" {
	catalog_name = "Apache Web Server"
	resource_configuration = {
		Apache_Full_Support.Optum.Environment = "${var.environment}"
        	Apache_Full_Support.Optum.Network.Zone = "${var.network_zone}"
		Apache_Full_Support.Optum.Interface.Zone = "${var.interface_zone}"
		Apache_Full_Support.cpu = "${var.cpu}"
		Apache_Full_Support.memory = "${var.memory}"
		Apache_Full_Support.Optum.DataCenter = "${var.datacenter}"
		Apache_Full_Support.Optum.AskID = "${var.askid}"
		Apache_Full_Support.Optum.DR.code = "${var.dr_code}"
		Apache_Full_Support.Optum.UnixID.Search = "${var.unixid_search}"
		Apache_Full_Support.Optum.UnixID.SearchResult = "${var.unixid}"
		Apache_Full_Support.disks = "${var.disk}"
        	Apache_Full_Support.Optum.ResilienceZone = "${var.resilience_zone}"
		Apache_Full_Support.Optum.ReservationPolicyName = "${var.reservation_policy_name}"
		Apache_Full_Support.__ReservationPolicyID = "${var.reservation_policy_id}"
		Apache_Full_Support.Optum.Ebiz.Description = "${var.ebiz_description}"
        	Apache_Full_Support.Optum.Ebiz.mui = "${var.ebiz_mui}"
		Apache_Full_Support.Optum.Ebiz.Mui.Selection = "${var.ebiz_mui_selection}"
        	Apache_Full_Support.Optum.Ebiz.apacheVersion = "${var.ebiz_apache_version}"
        	Apache_Full_Support.Optum.GetLOBNames = "${var.LOB}"
	}
	count = "${var.count}"
	catalog_configuration = {
		Optum.rules.use.agreement = "yes"
		lease_days = ""
	}
	wait_timeout = 200
}
