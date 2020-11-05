# frozen_string_literal: true

require_relative 'ansible'
require_relative 'aws_cloudformation'
require_relative 'docker_compose'
require_relative 'helm'
require_relative 'kubernetes'
require_relative 'terraform'

module StormTrooper
  module Scaffold
    module Fragment
      class Root < Base

        desc 'terraform', 'terraform skeleton for provider'
        subcommand 'terraform', StormTrooper::Skeleton::Terraform

        desc 'awscloudformation', 'cloudformation skeleton by aws service name'
        subcommand 'cloudformation', StormTrooper::Skeleton::AwsCloudformation

        desc 'dockercompose', 'dockercompose skeleton'
        subcommand 'dockercompose', StormTrooper::Skeleton::DockerCompose

        desc 'ansible', 'ansible skeleton'
        subcommand 'ansible', StormTrooper::Skeleton::Ansible

        desc 'helm', 'helm skeleton'
        subcommand 'helm', StormTrooper::Skeleton::Helm

        desc 'kubernetes', 'k8s skeleton'
        subcommand 'kubernetes', StormTrooper::Skeleton::Kubernetes

      end
    end
  end
end
