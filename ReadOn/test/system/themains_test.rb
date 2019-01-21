require "application_system_test_case"

class ThemainsTest < ApplicationSystemTestCase
  setup do
    @themain = themains(:one)
  end

  test "visiting the index" do
    visit themains_url
    assert_selector "h1", text: "Themains"
  end

  test "creating a Themain" do
    visit themains_url
    click_on "New Themain"

    click_on "Create Themain"

    assert_text "Themain was successfully created"
    click_on "Back"
  end

  test "updating a Themain" do
    visit themains_url
    click_on "Edit", match: :first

    click_on "Update Themain"

    assert_text "Themain was successfully updated"
    click_on "Back"
  end

  test "destroying a Themain" do
    visit themains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Themain was successfully destroyed"
  end
end
