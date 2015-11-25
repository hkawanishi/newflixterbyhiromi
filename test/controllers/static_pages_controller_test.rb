require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  #test "the truth" do
  #  assert true
  #end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "h1", "Learn Something from the Pros"
  end
end
