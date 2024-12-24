variable "aws_region" {
 description = "AWS region"
 type = string
 default  = "ap-south-1"
}

variable "instance_type" {
 description = "EC2 instance type"
 type = string
 default  = "t2.micro"
}

variable "instance_name" {
 description = "Name tag for the EC2 instance"
 type = string
 default  = "nginx-server"
}

variable "ami_id" {
 description = "AMI ID for Ubuntu 22.04"
 type = string
 default  = "ami-03f4878755434977f" # Ubuntu 22.04 LTS in ap-south-1
}

variable "volume_size" {
 description = "Root volume size in GB"
 type = number
 default  = 30
}

variable "ingress_ports" {
 description = "List of ingress ports"
 type = list(number)
 default  = [22, 80, 443]
}
