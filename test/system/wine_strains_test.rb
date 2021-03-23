require "application_system_test_case"

class WineStrainsTest < ApplicationSystemTestCase
  setup do
    @wine_strain = wine_strains(:one)
  end

  test "visiting the index" do
    visit wine_strains_url
    assert_selector "h1", text: "Wine Strains"
  end

  test "creating a Wine strain" do
    visit wine_strains_url
    click_on "New Wine Strain"

    click_on "Create Wine strain"

    assert_text "Wine strain was successfully created"
    click_on "Back"
  end

  test "updating a Wine strain" do
    visit wine_strains_url
    click_on "Edit", match: :first

    click_on "Update Wine strain"

    assert_text "Wine strain was successfully updated"
    click_on "Back"
  end

  test "destroying a Wine strain" do
    visit wine_strains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wine strain was successfully destroyed"
  end
end
