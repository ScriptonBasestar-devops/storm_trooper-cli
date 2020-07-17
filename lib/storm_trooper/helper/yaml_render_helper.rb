# frozen_string_literal: true

require 'yaml'

module StormTrooper
  module Helper
    class YamlRenderHelper

      def initialize(tmp_root, output_root)
        @tmpl_root = tmp_root
        @output_root = output_root
      end

      def load_template(tmpl_filename)
        @tmpl = File.read(File.join(@tmpl_root, tmpl_filename))
      end

      # def load_vars(vars_filename)
      #   @vars = YAML.safe_load(File.read(File.join(@var_root, var_filename)))
      # end

      def render(vars)
        ERB.new(File.read(File.join(@tmp_root, tmpl_filename))).result(binding)
      end

      def output(output_path)

      end

    end
  end
end
