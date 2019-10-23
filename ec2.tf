resource "aws_instance" "ec2-exercise1" {
    ami = "ami-0d4df21ffeb914d61"
    instance_type = "t2.medium"
    tags = {
        Name="ec2-exercise1"
    }
    key_name="test"
    get_password_data=true
	
    vpc_security_group_ids = ["sg-a736e4e5"]
	subnet_id = "subnet-234fd544"

    root_block_device {
        delete_on_termination=true
        volume_type="gp2"
        volume_size=40
        iops=100
    }

    user_data=<<EOF
<powershell>
Write-Output "y\n"|winrm quickconfig
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
winrm set winrm/config/service/Auth '@{Basic="true"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="1024"}'
</powershell>
  EOF
}

resource "null_resource" "copyfile" {
  connection {
    host = aws_instance.rds_initialization.public_ip
    type     = "winrm"
    user     = "Administrator"
    password = rsadecrypt(aws_instance.ec2-exercise1.password_data,file(var.public_key))
    https = false
    insecure = true
  }

  provisioner "file" {
    source = "testscript.ps1"
    destination = "c:\\Windows\\Temp\\testscript.ps1"
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "powershell.exe c:\\Windows\\Temp\\rds_initialisation.ps1",
  #   ]
  # }

}
