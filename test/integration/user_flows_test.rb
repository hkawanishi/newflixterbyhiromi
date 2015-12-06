require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should create a new user" do
    visit root_path
    click_link "Sign Up"
    fill_in "Email", with: "penguin@example.com"
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    click_button "Sign up"
    assert_equal root_path, current_path
    first(:link, "My Dashboard").click
    assert_equal dashboard_path, current_path 
  end

  test "should go to list of all courses" do
    visit root_path
    click_link "See All Courses"
    assert_equal courses_path, current_path
  end

  test "learn more should go to list of all courses" do
    visit root_path
    click_link "Learn More"
    assert_equal courses_path, current_path
  end

  test "should create a course section lesson" do
    visit root_path
    click_link "Sign Up"
    fill_in "Email", with: "penguin@example.com"
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    click_button "Sign up"
    assert_equal root_path, current_path
    click_link "Teach a Course"

    fill_in "Title", with: "lol"
    fill_in "Description", with: "omg"
    fill_in "Cost", with: "10"
    click_button "Create"
    assert page.has_content?('Add a new section...')

    click_button "Add a new section..."
    fill_in "section_title", with: "newsection"

    click_button "Add a section"
    assert page.has_content?('Add a New Lesson...')
    
    click_button "Add a New Lesson..."
    fill_in "lesson_title", with: "newlesson1"
    fill_in "Subtitle", with: "newlessonsubtitle1"

    assert page.has_content?('Add a New Lesson...')

    #page_id = current_path.match(/^\D*(\d)\D*(\d)/).captures.join
    #path = "/courses/" + page_id.to_s + 
    #visit path
    #save_and_open_page
    #print page.html

  end



end
