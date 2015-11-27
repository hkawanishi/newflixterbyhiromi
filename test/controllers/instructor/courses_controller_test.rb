require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get to new" do
    user = FactoryGirl.create(:user)
    sign_in user

    get :new
    assert_response :success
  end

  test "show found" do
    user = FactoryGirl.create(:user)
    sign_in user
    course = FactoryGirl.create(:course, :user => user)
    get :show, :id => course.id
    assert_response :success
  end

  test "create" do
    user = FactoryGirl.create(:user)
    sign_in user
    assert_difference 'Course.count' do
      post :create, {:course => {
                       :title => 'sometitle',
                       :description => 'somedescription',
                       :cost => 1.0,
                     }
                     }
    end
    assert_equal 1, user.courses.count
  end


  test "create course requires logged in" do
    post :create, :course_id => 'omg'
    assert_redirected_to new_user_session_path
  end

  test "validation error" do
    user = FactoryGirl.create(:user)
    course = FactoryGirl.create(:course)
    sign_in user
    put :create, :id => course.id, :course => {:title => '' }
    assert course.reload.title.present?
    assert_response :unprocessable_entity
  end

end
