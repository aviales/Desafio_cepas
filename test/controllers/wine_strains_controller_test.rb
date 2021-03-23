require "test_helper"

class WineStrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine_strain = wine_strains(:one)
  end

  test "should get index" do
    get wine_strains_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_strain_url
    assert_response :success
  end

  test "should create wine_strain" do
    assert_difference('WineStrain.count') do
      post wine_strains_url, params: { wine_strain: {  } }
    end

    assert_redirected_to wine_strain_url(WineStrain.last)
  end

  test "should show wine_strain" do
    get wine_strain_url(@wine_strain)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_strain_url(@wine_strain)
    assert_response :success
  end

  test "should update wine_strain" do
    patch wine_strain_url(@wine_strain), params: { wine_strain: {  } }
    assert_redirected_to wine_strain_url(@wine_strain)
  end

  test "should destroy wine_strain" do
    assert_difference('WineStrain.count', -1) do
      delete wine_strain_url(@wine_strain)
    end

    assert_redirected_to wine_strains_url
  end
end
