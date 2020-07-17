# frozen_string_literal: true

require File.expand_path('../test_helper', __dir__)


class YamlRenderHelperTest < Minitest::HooksSpec
  # https://github.com/mrrusof/minitest-before-after-examples/blob/master/class-eager-flat-hooks.rb

  before(:all) do
    puts 'executing something expensive'
    @expensive = 'woah! expensive!'
  end

  after(:all) do
    puts "cleaning expensive value: #{@expensive}"
  end

  def setup
    @yaml_helper = StormTrooper::Helper::YamlHelper.new('test/tmpls', 'test/vars', 'tmp/card')
  end

  def teardown
    # @yaml_helper.
    puts 'teardown'
  end

  # ============================ test ============================

  def test_render
    @vars = result = @yaml_helper.render('docker-compose/docker-compose.yml', 'docker-compose/docker-compose.yml')
    puts result
    @yaml_helper.output('test.yml', result)
  end

end
