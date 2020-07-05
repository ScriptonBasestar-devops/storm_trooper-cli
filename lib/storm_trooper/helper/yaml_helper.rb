# frozen_string_literal: true

require 'yaml'

module StormTrooper
  module Helper
    class YamlHelper
      include StormTrooper::Helper
      def initialize(tmp_root, var_root, output_root)
        @var_root = var_root
      end

      def vars_from_yaml(var_filename)
        @vars = YAML.safe_load(File.read(File.join(@var_root, var_filename)))
      end

    end
  end
end
