variable "instance_name" {
  description = "Name of ec2 instance"
  type = string
}

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type = string
  default = "ami-0e97ea97a2f374e3d"
}

variable "instance_type" {
  description = "ec2 instance type"
  type = string
  default = "t2.micro"
}

variable "db_username" {
  description = "username for database"
  type = string
  default = "foo"
}

variable "db_password" {
  description = "password for database"
  type = string
  sensitive = true
}