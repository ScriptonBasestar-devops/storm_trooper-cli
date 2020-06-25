# frozen_string_literal: true

require_relative 'generate/root'
require_relative 'fragment/root'
require_relative 'execute/root'
require_relative 'skeleton/root'

module StormTrooper
  class Root < Base

    desc 'generate', 'Generate IaC from configuration'
    subcommand 'generate', StormTrooper::Generate::Root

    desc 'fragment', 'Use kite modules with environments'
    subcommand 'fragment', StormTrooper::Fragment::Root

    desc 'execute', 'Run scripts'
    subcommand 'execute', StormTrooper::Execute::Root

    desc 'version', 'Return kite version'
    # Return kite version
    def version
      say "v#{StormTrooper::VERSION}"
    end
  end
end
