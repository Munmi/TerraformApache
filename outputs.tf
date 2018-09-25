output "ip" {
  value = ["${vra7_resource.apache-full-support.*.ip_address}"]
}
output "server_name" {
  value = ["${vra7_resource.apache-full-support.*.server_name}"]
}