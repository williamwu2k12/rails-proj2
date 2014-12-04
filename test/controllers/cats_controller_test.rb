require 'test_helper'

class CatsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
    setup do
      @cat = cats(:one)
      @request.env['HTTP_REFERER'] = 'http://test.com/sessions/new'
    end

    test "should get new" do
      get :new
      assert_response :success
    end

end
