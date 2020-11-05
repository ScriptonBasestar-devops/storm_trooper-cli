# frozen_string_literal: true

require 'git'

module StormTrooper
  module Helper
    # git command
    class GitHelper
      def check_committed(path)
        g = Git.open(path, log: Logger.new(STDOUT))
        say 'Commit your changes, before generate work' unless g.diff.empty?
      end
    end
  end
end
