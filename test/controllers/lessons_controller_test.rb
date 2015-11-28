require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get lessons show" do
    lesson = FactoryGirl.create(:lesson)
    get :show, :id => lesson.id
    assert_response :success
  end
end
