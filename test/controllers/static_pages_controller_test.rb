require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  #test "the truth" do
  #  assert true
  #end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "create" do
    user = FactoryGirl.create(:user)
    sign_in user
  end
end
