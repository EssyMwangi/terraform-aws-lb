#Load Balancer
resource "aws_lb" "load_balancer" {
  name = var.lb_name
  load_balancer_type = var.lb_type
  subnets = var.subnets
  security_groups = var.security_groups

  tags = merge(
    var.tags,
    {
        project = var.project
        tier_name = var.tier_name
        
    }
  )
}


#Load Balancer Listener
resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = aws_lb.load_balancer.arn
  port = var.listener_port
  protocol = var.listener_protocol

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "404: Essy isn't here"
      status_code = 404
    }
  }
}

#Load Balancer Target Group
resource "aws_lb_target_group" "lb_target_group" {
  name = "${var.lb_name}-tg-${var.tier_name}"
  port = var.listener_port
  protocol = var.listener_protocol
  vpc_id = var.vpc_id


  health_check {
    path = var.path
    protocol = var.listener_protocol
    matcher = var.matcher
    interval = var.interval
    timeout = var.timeout
    healthy_threshold = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
    
  }

  tags = merge(
    var.tags,
    {
        project = var.project
        tier_name = var.tier_name
        
    }
  )

  
}

#Rule tells Listener what to do when there is traffic
resource "aws_lb_listener_rule" "lb_listener_rule" {
  listener_arn = aws_lb_listener.lb_listener.arn
  priority = var.priority

  condition {
    path_pattern {
      values = ["*"]
    }
  }

  action{
    type = "forward"
    target_group_arn = aws_lb_target_group.lb_target_group.arn
  }
  
}

