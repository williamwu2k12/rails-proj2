require 'test_helper'

class FavoritesTest < ActiveSupport::TestCase
  test "test_favorite_count" do
    assert_equal 3, Favorites.count, "yaml works"
  end
end
