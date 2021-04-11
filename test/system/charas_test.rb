require "application_system_test_case"

class CharasTest < ApplicationSystemTestCase
  setup do
    @chara = charas(:one)
  end

  test "visiting the index" do
    visit charas_url
    assert_selector "h1", text: "Charas"
  end

  test "creating a Chara" do
    visit charas_url
    click_on "New Chara"

    fill_in "Ability", with: @chara.ability
    fill_in "Ability b", with: @chara.ability_b
    fill_in "Age", with: @chara.age
    fill_in "Animal", with: @chara.animal
    fill_in "Color1", with: @chara.color1
    fill_in "Color2", with: @chara.color2
    fill_in "Color3", with: @chara.color3
    fill_in "Desc", with: @chara.desc
    fill_in "Eye color", with: @chara.eye_color
    fill_in "Group after", with: @chara.group_after
    fill_in "Group before", with: @chara.group_before
    fill_in "Group now", with: @chara.group_now
    fill_in "Hair color", with: @chara.hair_color
    fill_in "Height", with: @chara.height
    fill_in "Name", with: @chara.name
    fill_in "Sex", with: @chara.sex
    fill_in "Shape", with: @chara.shape
    fill_in "Skin1", with: @chara.skin1
    fill_in "Skin2", with: @chara.skin2
    fill_in "Target", with: @chara.target
    fill_in "Theme", with: @chara.theme
    click_on "Create Chara"

    assert_text "Chara was successfully created"
    click_on "Back"
  end

  test "updating a Chara" do
    visit charas_url
    click_on "Edit", match: :first

    fill_in "Ability", with: @chara.ability
    fill_in "Ability b", with: @chara.ability_b
    fill_in "Age", with: @chara.age
    fill_in "Animal", with: @chara.animal
    fill_in "Color1", with: @chara.color1
    fill_in "Color2", with: @chara.color2
    fill_in "Color3", with: @chara.color3
    fill_in "Desc", with: @chara.desc
    fill_in "Eye color", with: @chara.eye_color
    fill_in "Group after", with: @chara.group_after
    fill_in "Group before", with: @chara.group_before
    fill_in "Group now", with: @chara.group_now
    fill_in "Hair color", with: @chara.hair_color
    fill_in "Height", with: @chara.height
    fill_in "Name", with: @chara.name
    fill_in "Sex", with: @chara.sex
    fill_in "Shape", with: @chara.shape
    fill_in "Skin1", with: @chara.skin1
    fill_in "Skin2", with: @chara.skin2
    fill_in "Target", with: @chara.target
    fill_in "Theme", with: @chara.theme
    click_on "Update Chara"

    assert_text "Chara was successfully updated"
    click_on "Back"
  end

  test "destroying a Chara" do
    visit charas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chara was successfully destroyed"
  end
end
