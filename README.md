## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.15.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb.load_balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.lb_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener_rule.lb_listener_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |
| [aws_lb_target_group.lb_target_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_healthy_threshold"></a> [healthy\_threshold](#input\_healthy\_threshold) | Health Threshold | `number` | n/a | yes |
| <a name="input_interval"></a> [interval](#input\_interval) | interval | `number` | n/a | yes |
| <a name="input_lb_name"></a> [lb\_name](#input\_lb\_name) | Name of the Load Balancer | `string` | n/a | yes |
| <a name="input_lb_type"></a> [lb\_type](#input\_lb\_type) | Type of Load Balance i.e: application/network | `string` | n/a | yes |
| <a name="input_listener_port"></a> [listener\_port](#input\_listener\_port) | port to listen to | `number` | n/a | yes |
| <a name="input_listener_protocol"></a> [listener\_protocol](#input\_listener\_protocol) | protocol to listen to | `string` | n/a | yes |
| <a name="input_matcher"></a> [matcher](#input\_matcher) | response type i.e 200 | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | value | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | Priority of listener i.e 100 | `number` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project Name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | default region for resources | `string` | n/a | yes |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | Security Groups to attach to ALB | `list(string)` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | The subnets to associate to the ALB | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | n/a | yes |
| <a name="input_tier_name"></a> [tier\_name](#input\_tier\_name) | Unique Identifier | `string` | n/a | yes |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | timeout | `number` | n/a | yes |
| <a name="input_unhealthy_threshold"></a> [unhealthy\_threshold](#input\_unhealthy\_threshold) | Unhealth Threshold | `number` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_target_group_arn"></a> [lb\_target\_group\_arn](#output\_lb\_target\_group\_arn) | n/a |
| <a name="output_load_balancer_name"></a> [load\_balancer\_name](#output\_load\_balancer\_name) | n/a |
