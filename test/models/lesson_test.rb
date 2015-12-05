require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @lesson = FactoryGirl.create(:lesson)
  end

  test "lesson title should be present" do
    assert_attribute_is_validated(@lesson, :title, " ", 1)
  end

  test "lesson subtitle should be present" do
    assert_attribute_is_validated(@lesson, :subtitle, " ", 1)
  end

  test "next lesson should work" do
    lesson = FactoryGirl.create(:lesson)
    lesson = FactoryGirl.create(:lesson)
    puts "lesson1 is #{lesson1.row_order}"
    assert true
  end


end
