# frozen_string_literal: true

require 'yaml'

module StormTrooper
  module Helper
    class YamlHelper
      def initialize(tmp_root, var_root, output_root)
        @tmp_root = tmp_root
        @var_root = var_root
        @output_root = output_root
      end

      def render(tmpl_filename)
        ERB.new(File.read(File.join(@tmp_root, tmpl_filename))).result(binding)
      end

      def output(output_filename, &block)
        File.open(File.join(@output_root, output_filename), File::RSDWR | File::CREAT, 0o644) do |f|
          f.flock(File::LOCK_EX)
          f.rewind
          f.write block
          f.flush
          f.truncate(f.pos)
        end
      end
    end
  end
end
