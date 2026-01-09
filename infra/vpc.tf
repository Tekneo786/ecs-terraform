data "aws_vpc" "default" {
  id = "vpc-05e01744d653259f0"
}

locals {
  alb_subnets = [
    "subnet-0f63103e9601bcff3", # eu-west-2a
    "subnet-0fd0dfe7f394de968"  # eu-west-2b
  ]
}