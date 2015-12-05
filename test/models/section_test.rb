require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # end
  test "title should be present" do
    section = FactoryGirl.create(:section)
    section.title = " "
    assert_not section.valid?
  end

end
