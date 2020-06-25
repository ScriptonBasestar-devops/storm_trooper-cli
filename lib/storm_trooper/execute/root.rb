# frozen_string_literal: true

require_relative 'aws_cloudformation'
require_relative 'terraform'

module StormTrooper
  module Execute
    # Execute Root
    class Root < Base

      desc 'aws-cloudformation', 'Generate IaC from configuration'
      subcommand 'aws-cloudformation', StormTrooper::Execute::AwsCloudformation

      desc 'terraform', 'Run Terraform-related commands with environment variables loaded from module vars'
      subcommand 'terraform', StormTrooper::Execute::Terraform

    end
  end
end
