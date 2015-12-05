require 'test_helper'

class Instructor::SectionsControllerTest < ActionController::TestCase

  # test "section new found" do
  #   user = FactoryGirl.create(:user)
  #   sign_in user
  #   course = FactoryGirl.create(:course)
  #   get :new, :course_id => course.id
  #   assert_response :success
  # end

  test "section create found" do
    user = FactoryGirl.create(:user)
    sign_in user
    course = FactoryGirl.create(:course, :user => user)
    assert_difference 'Section.count' do
      post :create, :course_id => course.id, :section => {
        :title => 'sometitle'
      }

    end
    assert_equal 1, course.sections.count
  end
end
