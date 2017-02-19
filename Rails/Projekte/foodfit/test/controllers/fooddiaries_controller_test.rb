require 'test_helper'

class FooddiariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fooddiary = fooddiaries(:one)
  end

  test "should get index" do
    get fooddiaries_url
    assert_response :success
  end

  test "should get new" do
    get new_fooddiary_url
    assert_response :success
  end

  test "should create fooddiary" do
    assert_difference('Fooddiary.count') do
      post fooddiaries_url, params: { fooddiary: { anzahl: @fooddiary.anzahl, datum: @fooddiary.datum, food_id: @fooddiary.food_id } }
    end

    assert_redirected_to fooddiary_url(Fooddiary.last)
  end

  test "should show fooddiary" do
    get fooddiary_url(@fooddiary)
    assert_response :success
  end

  test "should get edit" do
    get edit_fooddiary_url(@fooddiary)
    assert_response :success
  end

  test "should update fooddiary" do
    patch fooddiary_url(@fooddiary), params: { fooddiary: { anzahl: @fooddiary.anzahl, datum: @fooddiary.datum, food_id: @fooddiary.food_id } }
    assert_redirected_to fooddiary_url(@fooddiary)
  end

  test "should destroy fooddiary" do
    assert_difference('Fooddiary.count', -1) do
      delete fooddiary_url(@fooddiary)
    end

    assert_redirected_to fooddiaries_url
  end
end
