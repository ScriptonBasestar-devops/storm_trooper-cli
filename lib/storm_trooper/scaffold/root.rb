# frozen_string_literal: true

require 'storm_trooper/helper/root'

module StormTrooper
  module Scaffold
    class Root < Base
      include StormTrooper::Helper

      desc 'platform', 'Clone Platform from Git'
      subcommand 'platform', StormTrooper::Scaffold::Platform

      desc 'fragment', 'Scaffolding fragment for platform'
      subcommand 'fragment', StormTrooper::Scaffold::Fragment

    end
  end
end
