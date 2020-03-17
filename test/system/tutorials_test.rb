require "application_system_test_case"

class TutorialsTest < ApplicationSystemTestCase
  setup do
    @tutorial = tutorials(:one)
  end

  test "visiting the index" do
    visit tutorials_url
    assert_selector "h1", text: "Tutorials"
  end

  test "creating a Tutorial" do
    visit tutorials_url
    click_on "New Tutorial"

    fill_in "Description", with: @tutorial.description
    fill_in "Image link", with: @tutorial.image_link
    fill_in "Link", with: @tutorial.link
    fill_in "Title", with: @tutorial.title
    fill_in "User", with: @tutorial.user_id
    click_on "Create Tutorial"

    assert_text "Tutorial was successfully created"
    click_on "Back"
  end

  test "updating a Tutorial" do
    visit tutorials_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tutorial.description
    fill_in "Image link", with: @tutorial.image_link
    fill_in "Link", with: @tutorial.link
    fill_in "Title", with: @tutorial.title
    fill_in "User", with: @tutorial.user_id
    click_on "Update Tutorial"

    assert_text "Tutorial was successfully updated"
    click_on "Back"
  end

  test "destroying a Tutorial" do
    visit tutorials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tutorial was successfully destroyed"
  end
end
