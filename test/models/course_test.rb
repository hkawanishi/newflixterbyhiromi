require 'test_helper'
class CourseTest < ActiveSupport::TestCase

  def setup
    @course = FactoryGirl.create(:course)
  end

  def assert_attribute_is_validated(model, attribute, value, flag)
    model.assign_attributes(attribute => value)
    if flag == 1
      assert_not model.valid?
    else
      assert model.valid?
    end
  end

  test "title should be present" do
    assert_attribute_is_validated(@course, :title, " ", 1)
  end

  test "description should be present" do
    assert_attribute_is_validated(@course, :description, " ", 1)
  end

  test "cost should be present" do
    assert_attribute_is_validated(@course, :cost, nil, 1)
  end
  
  test "free cost should not be negative" do
    assert_attribute_is_validated(@course, :cost, -1, 1)
  end

  test "cost zero is valid" do
    assert_attribute_is_validated(@course, :cost, 0, 2)
  end

  test "free cost is free" do
    @course.cost = 0
    assert @course.free? 
  end

  test "premium class is not free" do
    @course.cost = 40
    assert @course.premium? 
  end

end
