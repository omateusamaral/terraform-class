resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key-terraform.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-04b70fa74e45c3917" #ami from ubuntu us-east-1
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip.txt"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("./aws-key-terraform")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo subnet_id: ${data.terraform_remote_state.vpc.outputs.subnet_id} >> /tmp/network_info.txt",
      "echo security_group_id: ${data.terraform_remote_state.vpc.outputs.security_group_id} >> /tmp/network_info.txt",
    ]
  }
#provisioner file does not work in us-east-1
  provisioner "file" {
    source      = "./test.txt"
    destination = "/tmp/example.txt"
  }

  provisioner "file" {
    source      = "ami-04b70fa74e45c3917"
    destination = "/tmp/ami.txt"
  }



  tags = {
    Name = "vm-terraform"
  }
}
