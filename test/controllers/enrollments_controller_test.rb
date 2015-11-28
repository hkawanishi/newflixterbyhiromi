require 'test_helper'

class EnrollmentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create enrollment" do
    user = FactoryGirl.create(:user)
    sign_in user
    course = FactoryGirl.create(:course, :user => user)
    assert_difference 'Enrollment.count' do
      post :create, :course_id => course.id
    end
    assert_equal 1, course.enrollments.count
  end
end
