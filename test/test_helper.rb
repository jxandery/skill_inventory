ENV['SKILL_INVENTORY_ENV'] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'minitest/autorun'
require 'minitest/pride'

class ModelTest < Minitest::Test
  def teardown
    SkillInventory.delete_all
  end
end
