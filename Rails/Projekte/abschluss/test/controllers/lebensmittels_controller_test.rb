require 'test_helper'

class LebensmittelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lebensmittel = lebensmittels(:one)
  end

  test "should get index" do
    get lebensmittels_url
    assert_response :success
  end

  test "should get new" do
    get new_lebensmittel_url
    assert_response :success
  end

  test "should create lebensmittel" do
    assert_difference('Lebensmittel.count') do
      post lebensmittels_url, params: { lebensmittel: { eiweiß: @lebensmittel.eiweiß, fett: @lebensmittel.fett, kalorien: @lebensmittel.kalorien, kohlenhydrate: @lebensmittel.kohlenhydrate, menge: @lebensmittel.menge, name: @lebensmittel.name } }
    end

    assert_redirected_to lebensmittel_url(Lebensmittel.last)
  end

  test "should show lebensmittel" do
    get lebensmittel_url(@lebensmittel)
    assert_response :success
  end

  test "should get edit" do
    get edit_lebensmittel_url(@lebensmittel)
    assert_response :success
  end

  test "should update lebensmittel" do
    patch lebensmittel_url(@lebensmittel), params: { lebensmittel: { eiweiß: @lebensmittel.eiweiß, fett: @lebensmittel.fett, kalorien: @lebensmittel.kalorien, kohlenhydrate: @lebensmittel.kohlenhydrate, menge: @lebensmittel.menge, name: @lebensmittel.name } }
    assert_redirected_to lebensmittel_url(@lebensmittel)
  end

  test "should destroy lebensmittel" do
    assert_difference('Lebensmittel.count', -1) do
      delete lebensmittel_url(@lebensmittel)
    end

    assert_redirected_to lebensmittels_url
  end
end
