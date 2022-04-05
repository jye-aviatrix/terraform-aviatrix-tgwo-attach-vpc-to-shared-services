variable "security_domain_name" {

}

variable "tgw_name" {
  default = "tgwo"
}

variable "shared_service_security_domain_names" {
  default = ["Shared","Shared_Service_Domain"]
}

variable "vpc_account_name" {
  default = "aws-lab-jye"
 }

variable "region" {
  default = "us-west-1"
}

variable "vpc_id" {
  
}

variable "cloud_type" {
  default = 1 # Default to AWS cloud
}