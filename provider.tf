provider "alicloud" {
  region     = var.region
}

terraform {
 backend "oss" {
   bucket              = "demo-bucket-shh"
   prefix              = "azure-pipelines/aliyun-devops"
   key                 = "tfstate"
   region              = "cn-shanghai"
   tablestore_endpoint = "https://tfstate.cn-shanghai.ots.aliyuncs.com"
   tablestore_table    = "statelock"
 }
}
