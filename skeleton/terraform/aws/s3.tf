//# terraform state file setup
//# create an S3 bucket to store the state file in
//resource "aws_s3_bucket" "terraform-state-storage-s3" {
//#  bucket = "terraform-remote-state-storage-s3"
//  bucket_prefix  = "<%= @cloud['aws']['bucket_name'] %>"
//
//  versioning {
//    enabled = true
//  }
//
//  lifecycle {
//    prevent_destroy = true
//  }
//
//  tags {
//    Name         = "<%= @cloud['aws']['bucket_name'] %> Terraform State Store"
//    Component    = "storm_trooper-stack"
//  }
//}
//
//output "bucket_name" {
//  value = aws_s3_bucket.terraform-state-storage-s3.id
//}
