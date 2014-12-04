require 'test_helper'

class LikesTest < ActiveSupport::TestCase
  test "test_likes_count" do
    assert_equal 3, Likes.count, "yaml works"
  end
end