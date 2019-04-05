require 'test_helper'

class HeadendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headend = headends(:one)
  end

  test "should get index" do
    get headends_url
    assert_response :success
  end

  test "should get new" do
    get new_headend_url
    assert_response :success
  end

  test "should create headend" do
    assert_difference('Headend.count') do
      post headends_url, params: { headend: { headend: @headend.headend } }
    end

    assert_redirected_to headend_url(Headend.last)
  end

  test "should show headend" do
    get headend_url(@headend)
    assert_response :success
  end

  test "should get edit" do
    get edit_headend_url(@headend)
    assert_response :success
  end

  test "should update headend" do
    patch headend_url(@headend), params: { headend: { headend: @headend.headend } }
    assert_redirected_to headend_url(@headend)
  end

  test "should destroy headend" do
    assert_difference('Headend.count', -1) do
      delete headend_url(@headend)
    end

    assert_redirected_to headends_url
  end
end
