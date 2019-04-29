resource "aws_instance" "ec2-test" {
    ami = "ami-011b3ccf1bd6db744"
    instance_type = "t2.micro"
    tags {
        Name="ec2-test"
    }
    key_name="my_key"
    security_groups=["${aws_security_group.allowed_ports1.name}"]
}