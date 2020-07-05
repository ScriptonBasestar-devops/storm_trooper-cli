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

        raise Thor::Error, "command failed: #{command}" if $CHILD_STATUS.exitstatus != 0
      end

    end
  end
end