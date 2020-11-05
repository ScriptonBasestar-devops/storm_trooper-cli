# frozen_string_literal: true

require_relative 'scaffold/fragment/skeleton/root'
require_relative 'generate/root'
require_relative 'scaffold/root'
require_relative 'execute/root'
require_relative 'helper/root'

module StormTrooper
  class Root < Base

    desc 'scaffold', 'Clone Platform, Add Fragment to Platform'
    subcommand 'scaffold', StormTrooper::Scaffold::Root

    desc 'generate', 'Generate override_template, blank_vars, last_order'
    subcommand 'generate', StormTrooper::Generate::Root

    desc 'execute', 'Execute LAST_ORDER'
    subcommand 'execute', StormTrooper::Execute::Root

    desc 'version', 'Return StormTrooper version'

    def version
      say "v#{StormTrooper::VERSION}"
    end

  end
end
