require 'test_helper'

class SportdiariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sportdiary = sportdiaries(:one)
  end

  test "should get index" do
    get sportdiaries_url
    assert_response :success
  end

  test "should get new" do
    get new_sportdiary_url
    assert_response :success
  end

  test "should create sportdiary" do
    assert_difference('Sportdiary.count') do
      post sportdiaries_url, params: { sportdiary: { anzahl: @sportdiary.anzahl, datum: @sportdiary.datum, sport_id: @sportdiary.sport_id } }
    end

    assert_redirected_to sportdiary_url(Sportdiary.last)
  end

  test "should show sportdiary" do
    get sportdiary_url(@sportdiary)
    assert_response :success
  end

  test "should get edit" do
    get edit_sportdiary_url(@sportdiary)
    assert_response :success
  end

  test "should update sportdiary" do
    patch sportdiary_url(@sportdiary), params: { sportdiary: { anzahl: @sportdiary.anzahl, datum: @sportdiary.datum, sport_id: @sportdiary.sport_id } }
    assert_redirected_to sportdiary_url(@sportdiary)
  end

  test "should destroy sportdiary" do
    assert_difference('Sportdiary.count', -1) do
      delete sportdiary_url(@sportdiary)
    end

    assert_redirected_to sportdiaries_url
  end
end
