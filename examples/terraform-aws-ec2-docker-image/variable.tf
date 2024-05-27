# AWS related variables - Modify region and instance type as per your requirement
variable "region" {
  description = "Newsletter automation ec2 instance deploy region"
  type        = string
  default     = "us-east-1"
}

variable "newsletter_ec2_inst_type" {
  description = "declaring ec2 instance type for newsletter for test"
  default     = "t3.small"
}

variable "keyname" {
  type        = string
  default     = "newsletter-key-pair"
  description = "Key-pair generated by Terraform"
  sensitive = true
}

# Modify default value as per your requirement
variable "profile" {
  default = "personal"
  type    = string

}
# path to temp key folder name
variable "temp_path" {
  type        = string
  description = "Path to the PEM private key file"
  default = "/tmp"
}
# folder name
variable "foldername" {
  type    = string
  default = "qxf2-lambdas"
}
# zip file name
variable "zipfilename" {
  type = string
  default = "lambda_code.zip"
}
# home directory
variable "homedir" {
  type = string
  default = "/home/ubuntu"  
}
# remote user-ubuntu
variable "remoteuser" {
  type = string
  description = "remote user name"
  default = "ubuntu"
}

#Lambda function related variables
variable "github_repo" {
  type    = string
  default = "https://github.com/qxf2/qxf2-lambdas.git"
}

variable "github_repo_name" {
  type    = string
  default = "url_filtering_lambda_rohini"
}

variable "lambda_function_name" {
  type    = string
  default = "URLFilteringLambdaRohini"
}

variable "lambda_handler" {
  type    = string
  default = "url_filtering_lambda_rohini.lambda_handler"
}

variable "lambda_runtime" {
  type    = string
  default = "python3.9"
}

variable "lambda_filename" {
  type    = string
  default = "lambda_code.zip"
}

variable "lambda_role_name" {
  type    = string
  default = "your-lambda-role"
}

variable "lambda_layer_name" {
  type    = string
  default = "urlfilter-layer"
}
/*
locals {
  function_source_dir    = "/tmp/qxf2-lambdas/URLFilteringLambdaRohini/"
  requirements_directory = "/tmp/qxf2-lambdas/URLFilteringLambdaRohini/"
}*/

# ChatGPT related variables
variable "CHATGPT_API_KEY" {
  type    = string
  default = "chat gpt api key value"
  sensitive = true
}

variable "CHATGPT_VERSION" {
  type    = string
  default = "gpt-3.5-turbo"
}

# Used for API authentication
variable "API_KEY_VALUE" {
  type    = string
  default = "test"
  sensitive = true
}

variable "employee_list" {
  description = "List of employee names"
  type        = list(string)
  default     = [ "Raju", "Rani", "Seetha", "Ramu", "Peter", "David", "Sundarm", "Jyothi", "Rajani", "Swapna", "Hema" ]
  sensitive = true
}

# Skype bot related variables
variable "ChannelID" {
  type    = string
  default = "test qxf2 bot channel ID"
}

variable "ETC_CHANNEL" {
  type    = string
  default = "test@thread.skype"
}

variable "Qxf2Bot_USER" {
  type    = string
  default = "live:.cid.f7021d4f3453e575"
}

variable "URLprefix" {
  type    = string
  default = "http://"
}

variable "URLendpoint" {
  type = string
  default = "/api/articles" 
}
