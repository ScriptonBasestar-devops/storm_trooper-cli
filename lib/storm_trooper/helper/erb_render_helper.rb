# frozen_string_literal: true

module StormTrooper
  module Helper
    class ErbRenderHelper

      def initialize(tmp_root, output_root)
        @tmpl_root = tmp_root
        @output_root = output_root
      end

      def load_template(tmpl) end

      def render(vars)
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