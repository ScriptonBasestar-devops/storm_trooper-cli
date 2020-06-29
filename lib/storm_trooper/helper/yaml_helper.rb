# frozen_string_literal: true

require 'yaml'

module StormTrooper
  module Helper
    class YamlHelper
      include StormTrooper::Helper
      def initialize(tmp_root, var_root, output_root)
        @tmp_root = tmp_root
        @var_root = var_root
        @output_root = output_root
      end

      def render(tmpl_filename, var_filename)
        @vars = YAML.safe_load(File.read(File.join(@var_root, var_filename)))
        ERB.new(File.read(File.join(@tmp_root, tmpl_filename))).result(binding)
      end

      def output(output_filename, result)
        create_directory File.join(@output_root, output_filename)
        File.open(filename, 'w', 0644) do |f|
          f.flock(File::LOCK_EX)
          f.rewind
          f.write result
          f.flush
          f.truncate(f.pos)
        end
      end
    end
  end
end
