# frozen_string_literal: true

require 'storm_trooper/helper/root'

module StormTrooper
  module Scaffold
    module Fragment
      class Terraform < Base
        include StormTrooper::Helper

        method_option :provider, type: :string, desc: 'Provider Type', required: true
        method_option :backend, type: :string, desc: 'Backend Type', default: 'local'
        method_option :env, type: :string, desc: 'env dev/real(stg,prd)', default: 'dev'
        desc 'init <terraform_skeleton_work_directory>', 'Add Terraform Skeleton'

        def init
          say 'Generate Terraform Skeleton'
          @provider_type = options[:provider]
          @backend_type = options[:backend]
          @env_name = options[:env]

          # @cloud[@provider_type][]
          # puts Dir.pwd
          # puts File.new('skeleton/terraform/provider').path

          # directory('terraform/provider', "#{work_directory}/#{@env_name}/terraform")
          directory("terraform/provider/#{@provider_type}", "tmpls/#{@env_name}/terraform")
          directory("terraform/backend/#{@backend_type}", "tmpls/#{@env_name}/terraform")
        end

        method_option :provider, type: :string, desc: 'Provider Type', required: true
        method_option :env, type: :string, desc: 'Name of environment', default: 'dev'
        desc 'append <name>', 'Append Terraform Infra'

        def append(work_directory)
          say 'hello'
        end

      end
    end
  end
end
