variable "project_name" {
  description = "Project name tag. Ex: aws-bigdata"
  type        = string
}

variable "sg_name" {
  description = "Name of the security group. If omitted, Terraform will assign a random, unique name."
  type        = string
}

variable "sg_description" {
  description = "Security group description. Defaults to Managed by Terraform."
  type        = string
  default     = "Managed by Terraform."
}

variable "sg_vpc" {
  description = "VPC ID."
  type        = string
}


variable "sg_ingress_rules" {
  description = "A list of ingress rules for the security group."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}

variable "sg_egress_rules" {
  description = "A list of egress rules for the security group."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}