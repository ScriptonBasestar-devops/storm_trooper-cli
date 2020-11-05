# frozen_string_literal: true

require_relative 'skeleton/root'
require_relative 'generate/root'
require_relative 'scaffold/root'
require_relative 'execute/root'
require_relative 'helper/root'

module StormTrooper
  class Root < Base

    desc 'skeleton', 'Skeleton for Platform, Fragment, Templates..'
    subcommand 'skeleton', StormTrooper::Skeleton::Root

    desc 'scaffold', 'Add Fragment to Platform Code'
    subcommand 'scaffold', StormTrooper::Fragment::Root

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
