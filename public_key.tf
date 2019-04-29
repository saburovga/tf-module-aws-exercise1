resource "aws_key_pair" "ssh-key" {
    key_name="my_key"
    public_key="${file("id_rsa.pub")}"
}