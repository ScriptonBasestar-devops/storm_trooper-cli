# frozen_string_literal: true

require_relative 'blank_vars'
require_relative 'last_order'
require_relative 'override_tmpl'

module StormTrooper
  module Generate
    class Root < Base

      desc 'override_tmpl', 'Generate override_tmpl'
      subcommand 'override_tmpl', StormTrooper::Generate::OverrideTmpl

      desc 'blank_vars', 'Generate blank_vars'
      subcommand 'blank_vars', StormTrooper::Generate::BlankVars

      desc 'last_order', 'Generate last_order'
      subcommand 'last_order', StormTrooper::Generate::LastOrder

    end
  end
end
