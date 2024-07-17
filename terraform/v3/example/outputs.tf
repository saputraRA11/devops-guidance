output "instance_ip_addr" {
    value = aws_instance.instance
    sensitive = true
}

output "db_instance_addr" {
    value = aws_db_instance.db_instance
    sensitive = true
}