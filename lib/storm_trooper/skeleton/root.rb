# frozen_string_literal: true

require_relative 'ansible'
require_relative 'aws_cloudformation'
require_relative 'docker_compose'
require_relative 'helm'
require_relative 'k8s'
require_relative 'terraform'

module StormTrooper
  module Skeleton
    class Root < Base

      desc 'terraform', 'terraform skeleton for provider'
      subcommand 'terraform', StormTrooper::Skeleton::Terraform

      desc 'cloudformation', 'cloudformation skeleton by aws service name'
      subcommand 'cloudformation', StormTrooper::Skeleton::Terraform

      desc 'dockercompose', 'dockercompose skeleton'
      subcommand 'dockercompose', StormTrooper::Skeleton::Terraform

      desc 'ansible', 'ansible skeleton'
      subcommand 'ansible', StormTrooper::Skeleton::Terraform

      desc 'helm', 'helm skeleton'
      subcommand 'helm', StormTrooper::Skeleton::Terraform

      desc 'k8s', 'k8s skeleton'
      subcommand 'k8s', StormTrooper::Skeleton::Terraform

    end
  end
end
