require 'test_helper'

class Instructor::LessonsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "lesson new found" do
    user = FactoryGirl.create(:user)
    sign_in user
    section = FactoryGirl.create(:section, :user => user)
    get :new, :section_id => section.id
    assert_response :success
  end

  test "lesson create found" do
    user = FactoryGirl.create(:user)
    sign_in user
    section = FactoryGirl.create(:section, :user => user)
    assert_difference 'Lesson.count' do
      post :create, :section_id => section.id, :lesson => {
        :title => 'sometitle'
      }

    end
    assert_equal 1, section.lessons.count
  end

end
