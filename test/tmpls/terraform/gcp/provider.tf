provider "google" {
  credentials = "<%= @cloud['gcp']['service_account'] %>"
  project     = "<%= @cloud['gcp']['project'] %>"
  region      = "<%= @cloud['gcp']['region'] %>"
}

terraform {
  required_version = "~> 0.12"
}
