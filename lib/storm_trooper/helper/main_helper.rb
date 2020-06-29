

module StormTrooper
  module Helper
    def create_directory(filename)
      dir = File.dirname(filename)
      FileUtils.mkdir_p(dir) unless File.directory?(dir)
    end
  end
end