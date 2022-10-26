provider "aws" {
    region = "eu-west-2"
}

# Recurso de clave SSH en AWS
resource "aws_key_pair" "deployer-key" {
 key_name = "deployer-key"
 public_key = file(var.ssh_key_path)
 tags = {
    Name = "jamezcua-ssh"
 }
}

