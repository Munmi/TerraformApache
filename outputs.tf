output "ip" {
  value = ["${vra7_resource.sconfig.*.ip_address}"]
}
output "server_name" {
  value = ["${vra7_resource.sconfig.*.server_name}"]
}