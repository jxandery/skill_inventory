require_relative '../test_helper'

class SkillInventoryTest < ModelTest
  def test_it_creates_a_skill
    #SkillInventory.create({ :title       => "a title",
                         #:description => "a description"})
    SkillInventory.create({ :title       => "a title",
                         :description => "a description"})
    skill = SkillInventory.find(1)
    assert_equal "a title", skill.title
    assert_equal "a description", skill.description
    assert_equal 1, skill.id
  end
end
