require 'test_helper'

class KokoTestAjasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @koko_test_aja = koko_test_ajas(:one)
  end

  test "should get index" do
    get koko_test_ajas_url
    assert_response :success
  end

  test "should get new" do
    get new_koko_test_aja_url
    assert_response :success
  end

  test "should create koko_test_aja" do
    assert_difference('KokoTestAja.count') do
      post koko_test_ajas_url, params: { koko_test_aja: { age: @koko_test_aja.age, name: @koko_test_aja.name } }
    end

    assert_redirected_to koko_test_aja_url(KokoTestAja.last)
  end

  test "should show koko_test_aja" do
    get koko_test_aja_url(@koko_test_aja)
    assert_response :success
  end

  test "should get edit" do
    get edit_koko_test_aja_url(@koko_test_aja)
    assert_response :success
  end

  test "should update koko_test_aja" do
    patch koko_test_aja_url(@koko_test_aja), params: { koko_test_aja: { age: @koko_test_aja.age, name: @koko_test_aja.name } }
    assert_redirected_to koko_test_aja_url(@koko_test_aja)
  end

  test "should destroy koko_test_aja" do
    assert_difference('KokoTestAja.count', -1) do
      delete koko_test_aja_url(@koko_test_aja)
    end

    assert_redirected_to koko_test_ajas_url
  end
end
