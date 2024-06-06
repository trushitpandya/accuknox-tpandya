resource "aws_instance" "this" {
  provider      = aws
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (change if needed)
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "example-instance"
  }
}
