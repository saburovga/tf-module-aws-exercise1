# main.tf
provider "aws" {
  region = "us-east-1"
  version = "~>2.23"
}

resource "null_resource" "awscli_install" {
  provisioner "local-exec" {
    command = <<EOH
cat /etc/lsb-release
sudo apt install python3-pip
EOH
  }
}