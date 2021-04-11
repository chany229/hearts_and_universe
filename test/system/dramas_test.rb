require "application_system_test_case"

class DramasTest < ApplicationSystemTestCase
  setup do
    @drama = dramas(:one)
  end

  test "visiting the index" do
    visit dramas_url
    assert_selector "h1", text: "Dramas"
  end

  test "creating a Drama" do
    visit dramas_url
    click_on "New Drama"

    fill_in "Chara", with: @drama.chara_id
    fill_in "Desc", with: @drama.desc
    fill_in "Event", with: @drama.event_id
    click_on "Create Drama"

    assert_text "Drama was successfully created"
    click_on "Back"
  end

  test "updating a Drama" do
    visit dramas_url
    click_on "Edit", match: :first

    fill_in "Chara", with: @drama.chara_id
    fill_in "Desc", with: @drama.desc
    fill_in "Event", with: @drama.event_id
    click_on "Update Drama"

    assert_text "Drama was successfully updated"
    click_on "Back"
  end

  test "destroying a Drama" do
    visit dramas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drama was successfully destroyed"
  end
end
