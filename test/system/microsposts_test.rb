require "application_system_test_case"

class MicrospostsTest < ApplicationSystemTestCase
  setup do
    @microspost = microsposts(:one)
  end

  test "visiting the index" do
    visit microsposts_url
    assert_selector "h1", text: "Microsposts"
  end

  test "should create microspost" do
    visit microsposts_url
    click_on "New microspost"

    fill_in "Content", with: @microspost.content
    fill_in "User", with: @microspost.user_id
    click_on "Create Microspost"

    assert_text "Microspost was successfully created"
    click_on "Back"
  end

  test "should update Microspost" do
    visit microspost_url(@microspost)
    click_on "Edit this microspost", match: :first

    fill_in "Content", with: @microspost.content
    fill_in "User", with: @microspost.user_id
    click_on "Update Microspost"

    assert_text "Microspost was successfully updated"
    click_on "Back"
  end

  test "should destroy Microspost" do
    visit microspost_url(@microspost)
    click_on "Destroy this microspost", match: :first

    assert_text "Microspost was successfully destroyed"
  end
end
