require 'test_helper'
class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @course = FactoryGirl.create(:course)
  end

  #test "title should be present" do
  #  course = FactoryGirl.create(:course)
  #  course.title = " "
  #  assert_not course.valid?
  #end
  test "title should be present" do
    @course.title = " "
    assert_not @course.valid?
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
  
  test "cost zero is valid" do
    course = FactoryGirl.create(:course)
    course.cost = 0 
    assert course.valid? 
  end

  test "free cost should not be negative" do
    course = FactoryGirl.create(:course)
    course.cost = -1 
    assert_not course.valid?
  end

  test "free cost is free" do
    course = FactoryGirl.create(:course)
    course.cost = 0
    assert course.free? 
  end

  test "premium class is not free" do
    course = FactoryGirl.create(:course)
    course.cost = 40
    assert course.premium? 
  end

end
