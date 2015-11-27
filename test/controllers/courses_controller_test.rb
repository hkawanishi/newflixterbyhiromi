require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get courses index" do
    get :index
    assert_response :success
  end

  test "should get courses show" do
    course = FactoryGirl.create(:course)
    get :show, :id => course.id
    assert_response :success
  end

end
