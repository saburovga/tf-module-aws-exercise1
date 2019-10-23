resource "aws_instance" "ec2-exercise1" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type = "t2.micro"
    tags = {
        Name="ec2-exercise1"
    }
    key_name="test"
	
    vpc_security_group_ids = ["sg-a736e4e5"]
	subnet_id = "subnet-234fd544"
}

