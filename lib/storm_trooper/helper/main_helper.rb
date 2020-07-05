# frozen_string_literal: true
module StormTrooper
  module Helper
    module MainHelper

      def create_directory(filename)
        dir = File.dirname(filename)
        FileUtils.mkdir_p(dir) unless File.directory?(dir)
      end

      def run!(command, config = {})
        run(command)

        if $?.exitstatus != 0
          raise Thor::Error.new("command failed: #{command}")
        end
      end

    end
  end
end