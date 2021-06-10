resource "aws_instance" "dbserver" {
  ami           = var.amiid
  instance_type = var.instancetype

  tags = {
    Name = "Database Server created from module"
  }
}


output "dbserver_output" {
  value       = aws_instance.dbserver.public_ip
  description = "Public Ip"
}
