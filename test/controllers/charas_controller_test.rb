require 'test_helper'

class CharasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chara = charas(:one)
  end

  test "should get index" do
    get charas_url
    assert_response :success
  end

  test "should get new" do
    get new_chara_url
    assert_response :success
  end

  test "should create chara" do
    assert_difference('Chara.count') do
      post charas_url, params: { chara: { ability: @chara.ability, ability_b: @chara.ability_b, age: @chara.age, animal: @chara.animal, color1: @chara.color1, color2: @chara.color2, color3: @chara.color3, desc: @chara.desc, eye_color: @chara.eye_color, group_after: @chara.group_after, group_before: @chara.group_before, group_now: @chara.group_now, hair_color: @chara.hair_color, height: @chara.height, name: @chara.name, sex: @chara.sex, shape: @chara.shape, skin1: @chara.skin1, skin2: @chara.skin2, target: @chara.target, theme: @chara.theme } }
    end

    assert_redirected_to chara_url(Chara.last)
  end

  test "should show chara" do
    get chara_url(@chara)
    assert_response :success
  end

  test "should get edit" do
    get edit_chara_url(@chara)
    assert_response :success
  end

  test "should update chara" do
    patch chara_url(@chara), params: { chara: { ability: @chara.ability, ability_b: @chara.ability_b, age: @chara.age, animal: @chara.animal, color1: @chara.color1, color2: @chara.color2, color3: @chara.color3, desc: @chara.desc, eye_color: @chara.eye_color, group_after: @chara.group_after, group_before: @chara.group_before, group_now: @chara.group_now, hair_color: @chara.hair_color, height: @chara.height, name: @chara.name, sex: @chara.sex, shape: @chara.shape, skin1: @chara.skin1, skin2: @chara.skin2, target: @chara.target, theme: @chara.theme } }
    assert_redirected_to chara_url(@chara)
  end

  test "should destroy chara" do
    assert_difference('Chara.count', -1) do
      delete chara_url(@chara)
    end

    assert_redirected_to charas_url
  end
end
