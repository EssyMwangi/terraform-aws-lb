# Common Variables
variable "region" {
    description = "default region for resources"
    type = string  
}

variable "tags" {
    description = "Tags for resources"
    type = map(string)
}

variable "project" {
    description = "Project Name"
    type = string
}

variable "tier_name" {
    description = "Unique Identifier"
    type = string
  
}

# LB Variable
variable "lb_name" {
    description = "Name of the Load Balancer"
    type = string
  
}

variable "lb_type" {
    description = "Type of Load Balance i.e: application/network"
    type = string
  
}

variable "subnets" {
    description = "The subnets to associate to the ALB"
    type = list(string)
  
}

variable "security_groups" {
    description = "Security Groups to attach to ALB"
    type = list(string)
  
}

variable "listener_port" {
    description = "port to listen to"
    type = number
  
}

variable "listener_protocol" {
    description = "protocol to listen to"
    type = string
  
}

variable "vpc_id" {
    description = "VPC ID"
    type = string
  
}
variable "path" {
    description = "value"
    type = string
  
}
variable "matcher" {
    description = "response type i.e 200"
    type = string
  
}
variable "interval" {
    description = "interval"
    type = number
  
}
variable "timeout" {
    description = "timeout"
    type = number
  
}
variable "healthy_threshold" {
    description = "Health Threshold"
    type = number
  
}
variable "unhealthy_threshold" {
    description = "Unhealth Threshold"
    type = number
  
}

# LB Listener Rule Variable
variable "priority" {
    description = "Priority of listener i.e 100"
    type = number
  
}





