require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "title should be present" do
    lesson = FactoryGirl.create(:lesson)
    lesson.title = " "
    assert_not lesson.valid?
  end

  test "subtitle should be present" do
    lesson = FactoryGirl.create(:lesson)
    lesson.subtitle = " "
    assert_not lesson.valid?
  end


end
