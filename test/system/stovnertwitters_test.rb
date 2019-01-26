require "application_system_test_case"

class StovnertwittersTest < ApplicationSystemTestCase
  setup do
    @stovnertwitter = stovnertwitters(:one)
  end

  test "visiting the index" do
    visit stovnertwitters_url
    assert_selector "h1", text: "Stovnertwitters"
  end

  test "creating a Stovnertwitter" do
    visit stovnertwitters_url
    click_on "New Stovnertwitter"

    fill_in "Body", with: @stovnertwitter.body
    fill_in "Username", with: @stovnertwitter.username
    click_on "Create Stovnertwitter"

    assert_text "Stovnertwitter was successfully created"
    click_on "Back"
  end

  test "updating a Stovnertwitter" do
    visit stovnertwitters_url
    click_on "Edit", match: :first

    fill_in "Body", with: @stovnertwitter.body
    fill_in "Username", with: @stovnertwitter.username
    click_on "Update Stovnertwitter"

    assert_text "Stovnertwitter was successfully updated"
    click_on "Back"
  end

  test "destroying a Stovnertwitter" do
    visit stovnertwitters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stovnertwitter was successfully destroyed"
  end
end
