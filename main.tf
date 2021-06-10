provider "aws" {
  region = "ap-south-1"
}


module "dbserver_create" {
  source       = "./db"
  amiid        = "ami-0ad704c126371a549"
  instancetype = "t2.micro"
}

output "module_output" {
  value       = module.dbserver_create.dbserver_output
}

