resource "aws_instance" "web_server" {
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "Terraform-Web-Server"
  }
}

resource "aws_cloudwatch_log_group" "app_logs" {
  name = "terraform-app-logs"
}