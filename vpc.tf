resource "alicloud_resource_manager_resource_group" "demo" {
  resource_group_name = "demord"
  display_name        = "demord"
}

module "vpc" {
  source  = "git::https://github.com/imeks100/aliyun-iac-tpl//vpc-tpl"

  create            = true
  vpc_name          = "my-env-vpc"
  vpc_cidr          = "10.10.0.0/16"
  resource_group_id = alicloud_resource_manager_resource_group.demo.id

  availability_zones = ["cn-hangzhou-e", "cn-hangzhou-f", "cn-hangzhou-g"]
  vswitch_cidrs      = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]

  vpc_tags = {
    Owner       = "user"
    Environment = "staging"
    Name        = "complete"
  }

  vswitch_tags = {
    Project  = "Secret"
    Endpoint = "true"
  }
}
