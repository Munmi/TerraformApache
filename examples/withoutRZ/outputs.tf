output "ip" {
  value = ["${module.terraform-vra-apache.ip}"]
}
output "server_name" {
  value = ["${module.terraform-vra-apache.server_name}"]
}