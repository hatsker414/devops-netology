output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "caller_user" {
  value = "${data.aws_caller_identity.current.user_id}"
}

output "region_id" {
  value = "${data.aws_region.current.name}"
}
output "Private_ec2_ip_addr" {
  value = "${data.aws_instances.ec2.private_ips}"
}

output "subnet_id" {
  value = "${data.aws_instance.foo.subnet_id}"
}
