output "appservers" {
  value = join(",", aws_instance.workstation.*.public_ip)
}


