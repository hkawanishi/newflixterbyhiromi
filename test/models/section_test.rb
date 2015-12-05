require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @section = FactoryGirl.create(:section)
  end

  test "section title should be present" do
    assert_attribute_is_validated(@section, :title, " ", 1)
  end

end
