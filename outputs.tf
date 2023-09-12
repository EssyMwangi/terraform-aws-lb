output "load_balancer_name" {
    value = aws_lb.load_balancer.name
  
}

output "lb_target_group_arn" {
    value = aws_lb_target_group.lb_target_group.arn
  
}