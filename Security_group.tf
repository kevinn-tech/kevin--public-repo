resource "aws_security_group" "nginx_sg" {
 name = "nginx-sg"
 description = "Security group for Nginx server"

 dynamic "ingress" {
 for_each = var.ingress_ports
 content {
 from_port  = ingress.value
to_port  = ingress.value
 protocol = "tcp"
 cidr_blocks = ["0.0.0.0/0"]
 }
 }

 egress {
 from_port  = 0
 to_port  = 0
 protocol = "-1"
 cidr_blocks = ["0.0.0.0/0"]
 }

 tags = {
 Name = "nginx-security-group"
 }
}
