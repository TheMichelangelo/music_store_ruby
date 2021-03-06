require "application_system_test_case"

class MusiciansTest < ApplicationSystemTestCase
  setup do
    @musician = musicians(:one)
  end

  test "visiting the index" do
    visit musicians_url
    assert_selector "h1", text: "Musicians"
  end

  test "creating a Musician" do
    visit musicians_url
    click_on "New Musician"

    fill_in "Age", with: @musician.age
    fill_in "Home adress", with: @musician.home_adress
    fill_in "Name", with: @musician.name
    fill_in "Studio", with: @musician.studio_id
    fill_in "Surname", with: @musician.surname
    click_on "Create Musician"

    assert_text "Musician was successfully created"
    click_on "Back"
  end

  test "updating a Musician" do
    visit musicians_url
    click_on "Edit", match: :first

    fill_in "Age", with: @musician.age
    fill_in "Home adress", with: @musician.home_adress
    fill_in "Name", with: @musician.name
    fill_in "Studio", with: @musician.studio_id
    fill_in "Surname", with: @musician.surname
    click_on "Update Musician"

    assert_text "Musician was successfully updated"
    click_on "Back"
  end

  test "destroying a Musician" do
    visit musicians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Musician was successfully destroyed"
  end
end
