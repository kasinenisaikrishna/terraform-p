variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    type = string
    description = "this is the ami id of devops-practice which is rhel-9"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "tags" {
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_sshh"
}

variable "sg_description" {
    default = "Allow port number 22 for SSH access"
}

variable "from_port" {
  default = 22
}

variable "to_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "ingress_cidr" {
  type = list(string)
  default = ["0.0.0.0/0"]
}