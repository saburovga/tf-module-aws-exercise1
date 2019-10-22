output "external_ip" {
    value = "${aws_instance.ec2-exercise1.public_ip}"
}

output "private_ssh_key" {
    value = data.aws_s3_bucket_object.private_ssh_key.body
}