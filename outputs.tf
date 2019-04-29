output "external_ip" {
    value = "${aws_instance.ec2-test.public_ip}"
}