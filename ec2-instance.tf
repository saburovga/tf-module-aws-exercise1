#just comment
resource "aws_instance" "ec2-exercise1" {
    ami = "ami-011b3ccf1bd6db744"
    instance_type = "t2.micro"
    tags = {
        Name="ec2-exercise1"
    }
    #key_name="my_key"
	
    vpc_security_group_ids = ["sg-a736e4e5"]
	subnet_id = "subnet-234fd544"
}
