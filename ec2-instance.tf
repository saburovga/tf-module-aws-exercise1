resource "aws_instance" "ec2-exercise1" {
    ami = "ami-011b3ccf1bd6db744"
    instance_type = "t2.micro"
    tags = {
        Name="ec2-exercise1"
    }
    #key_name="my_key"
    #security_groups=["epam-by-ru"]
}
