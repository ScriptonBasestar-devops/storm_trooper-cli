//#https://www.terraform.io/docs/backends/types/gcs.html
//variable "bucket_name" {
//  default = "<%= @cloud['gcp']['bucket_name'] %>"
//}
//variable "env_name" {
//  env_name = "<%= @env_name %>"
//}
//
//# Setup Terraform GCS backend to be able to store .tfstate remotely
//terraform {
//  backend "gcs" {
//    bucket = var.bucket_name
//    prefix = "${var.env_name}/terraform/state"
//  }
//}
//
//# Store .tfstate in a GCS bucket
//data "terraform_remote_state" "tfstate" {
//  backend = "gcs"
//  config  = {
//    bucket = var.bucket_name
//    prefix = "${var.env_name}-terraform.tfstate"
//  }
//}
//
//resource "template_file" "tmplfile" {
//  template = data.terraform_remote_state.tfstate
//}
