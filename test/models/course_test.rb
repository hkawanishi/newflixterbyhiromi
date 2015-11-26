require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "title should be present" do
    course = FactoryGirl.create(:course)
    course.title = " "
    assert_not course.valid?
  end

  test "description should be present" do
    course = FactoryGirl.create(:course)
    course.description = " "
    assert_not course.valid?
  end

  test "cost should be present" do
    course = FactoryGirl.create(:course)
    course.cost = nil
    assert_not course.valid?
  end

end
