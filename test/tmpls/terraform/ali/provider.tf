provider "alicloud" {
#  version = "~> 1.51.0"

  access_key = "<%= @cloud['ali']['access_key'] %>"
  secret_key = "<%= @cloud['ali']['secret_key'] %>"
  region     = "<%= @cloud['ali']['region'] %>"
}

terraform {
  required_version = "~> 0.12"
}
