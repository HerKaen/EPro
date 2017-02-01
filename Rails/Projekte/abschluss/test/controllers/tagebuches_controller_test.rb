require 'test_helper'

class TagebuchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tagebuch = tagebuches(:one)
  end

  test "should get index" do
    get tagebuches_url
    assert_response :success
  end

  test "should get new" do
    get new_tagebuch_url
    assert_response :success
  end

  test "should create tagebuch" do
    assert_difference('Tagebuch.count') do
      post tagebuches_url, params: { tagebuch: { anzahl: @tagebuch.anzahl, eiweiß: @tagebuch.eiweiß, fett: @tagebuch.fett, kalorien: @tagebuch.kalorien, kohlenhydrate: @tagebuch.kohlenhydrate, menge: @tagebuch.menge, name: @tagebuch.name } }
    end

    assert_redirected_to tagebuch_url(Tagebuch.last)
  end

  test "should show tagebuch" do
    get tagebuch_url(@tagebuch)
    assert_response :success
  end

  test "should get edit" do
    get edit_tagebuch_url(@tagebuch)
    assert_response :success
  end

  test "should update tagebuch" do
    patch tagebuch_url(@tagebuch), params: { tagebuch: { anzahl: @tagebuch.anzahl, eiweiß: @tagebuch.eiweiß, fett: @tagebuch.fett, kalorien: @tagebuch.kalorien, kohlenhydrate: @tagebuch.kohlenhydrate, menge: @tagebuch.menge, name: @tagebuch.name } }
    assert_redirected_to tagebuch_url(@tagebuch)
  end

  test "should destroy tagebuch" do
    assert_difference('Tagebuch.count', -1) do
      delete tagebuch_url(@tagebuch)
    end

    assert_redirected_to tagebuches_url
  end
end
