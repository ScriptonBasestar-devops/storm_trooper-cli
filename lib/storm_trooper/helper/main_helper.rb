# frozen_string_literal: true

require 'yaml'

module StormTrooper
  module Helper

    def create_directory(filename)
      dir = File.dirname(filename)
      FileUtils.mkdir_p(dir) unless File.directory?(dir)
    end

    def load_yaml(yaml_filepath)
      YAML.safe_load(File.read(yaml_filepath))
    end

    def load_props(props_filepath)

    end

    def load_ini(ini_filepath)

    end

    def run!(command, config = {})
      run(command)

      if $?.exitstatus != 0
        raise Thor::Error.new("command failed: #{command}")
      end
    end

  end
end