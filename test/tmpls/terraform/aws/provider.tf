provider "aws" {
#  version    = "~> 2.0"

  access_key = "<%= @cloud['aws']['access_key'] %>"
  secret_key = "<%= @cloud['aws']['secret_key'] %>"
  region     = "<%= @cloud['aws']['region'] %>"
}

terraform {
  required_version = "~> 0.12"
}
