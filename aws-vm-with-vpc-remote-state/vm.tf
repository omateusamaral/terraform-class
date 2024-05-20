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
  tags = {
    Name = "vm-terraform"
  }
}