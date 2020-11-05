# frozen_string_literal: true

require 'test_helper'
require 'erb'
require 'thor'

class StormTrooperTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::StormTrooper::VERSION
  end

  # include Thor::Base
  # What we're interested in…
  # include Thor::Actions
  def test_rendering
    @config = {
      name: 'name11',
      underscored_name: 'iiii'
    }
    puts File.absolute_path('.')
    # @vars = YAML.safe_load(File.read('test/fragments/vars/ex1-local-project/docker-compose-vars.yml'))
    # # config.merge!(cloud_config)
    #
    # result = ERB.new(File.read('test/fragments/tmpls/ex1-local-project/docker-compose.yml')).result(binding)
    # puts result
    # thor.template('test/fragments/tmpls/ex1-local-project/docker-compose.yml.tt', 'tmp1.yml', vars)
    thor.template('test/fragments/tmpls/ex1-local-project/docker-compose.yml', 'test/fragments/tmpls/ex1-local-project/docker-compose.yml')
  end

end
