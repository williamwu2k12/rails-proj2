require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "test_comments_count" do
    assert_equal 3, Comment.count, "yaml works"
  end

  test "find" do
  	assert_equal "IMUSER1", comments(:one).content
  end
end
