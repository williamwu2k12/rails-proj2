require 'test_helper'

class CatTest < ActiveSupport::TestCase
  test "test_cats_count" do
    assert_equal 3, Cat.count, "yaml works"
  end

  test "find" do
    assert_equal "LOL", cats(:one).tag
  end
end
