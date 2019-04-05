require "application_system_test_case"

class HeadendsTest < ApplicationSystemTestCase
  setup do
    @headend = headends(:one)
  end

  test "visiting the index" do
    visit headends_url
    assert_selector "h1", text: "Headends"
  end

  test "creating a Headend" do
    visit headends_url
    click_on "New Headend"

    fill_in "Headend", with: @headend.headend
    click_on "Create Headend"

    assert_text "Headend was successfully created"
    click_on "Back"
  end

  test "updating a Headend" do
    visit headends_url
    click_on "Edit", match: :first

    fill_in "Headend", with: @headend.headend
    click_on "Update Headend"

    assert_text "Headend was successfully updated"
    click_on "Back"
  end

  test "destroying a Headend" do
    visit headends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Headend was successfully destroyed"
  end
end
