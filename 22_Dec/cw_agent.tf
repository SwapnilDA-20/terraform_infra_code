locals {
  userdata = templatefile("nginx.sh", {
    ssm_cloudwatch_config = aws_ssm_parameter.cw_agent.name
  })
}


resource "aws_ssm_parameter" "cw_agent" {
  description = "Cloudwatch agent config to configure custom log"
  name        = "/cloudwatch-agent/config"
  type        = "String"
  value       = "${file("cw_agent_config.json")}"
}

