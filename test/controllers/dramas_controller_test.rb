require 'test_helper'

class DramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drama = dramas(:one)
  end

  test "should get index" do
    get dramas_url
    assert_response :success
  end

  test "should get new" do
    get new_drama_url
    assert_response :success
  end

  test "should create drama" do
    assert_difference('Drama.count') do
      post dramas_url, params: { drama: { chara_id: @drama.chara_id, desc: @drama.desc, event_id: @drama.event_id } }
    end

    assert_redirected_to drama_url(Drama.last)
  end

  test "should show drama" do
    get drama_url(@drama)
    assert_response :success
  end

  test "should get edit" do
    get edit_drama_url(@drama)
    assert_response :success
  end

  test "should update drama" do
    patch drama_url(@drama), params: { drama: { chara_id: @drama.chara_id, desc: @drama.desc, event_id: @drama.event_id } }
    assert_redirected_to drama_url(@drama)
  end

  test "should destroy drama" do
    assert_difference('Drama.count', -1) do
      delete drama_url(@drama)
    end

    assert_redirected_to dramas_url
  end
end
