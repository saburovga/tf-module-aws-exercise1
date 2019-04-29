output "external_ip" {
    value = "${aws_instance.ec2-exercise1.public_ip}"
}