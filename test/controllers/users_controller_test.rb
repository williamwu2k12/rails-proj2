require 'test_helper'

class UsersControllerTest < ActionController::TestCase
	include Devise::TestHelpers
    test "should get index" do
      get :index
    end

    test "should get home" do
      assert_response :success
    end
end 
