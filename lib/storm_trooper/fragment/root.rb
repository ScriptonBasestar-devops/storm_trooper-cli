# frozen_string_literal: true

require_relative 'git'

module StormTrooper
  module Fragment
    class Root < Base

      desc 'clone', 'Generate IaC from configuration'
      subcommand 'clone', StormTrooper::Fragment::Git

    end
  end
end
