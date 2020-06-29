# frozen_string_literal: true

require File.expand_path('../test_helper', __dir__)

class YamlHelperTest < Minitest::Test
  def test_load
    @yaml_helper = StormTrooper::Helper::YamlHelper.new('test/tmpls', 'test/vars', 'tmp')
  end

  def test_render
    @yaml_helper = StormTrooper::Helper::YamlHelper.new('test/tmpls', 'test/vars', 'tmp')
    @yaml_helper.render('test.yml')
  end

  def test_output
    @yaml_helper = StormTrooper::Helper::YamlHelper.new('test/tmpls', 'test/vars', 'tmp')
    puts output
    # @yaml_helper.output
  end
end
