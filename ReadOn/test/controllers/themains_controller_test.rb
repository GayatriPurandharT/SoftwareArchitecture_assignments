require 'test_helper'

class ThemainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @themain = themains(:one)
  end

  test "should get index" do
    get themains_url
    assert_response :success
  end

  test "should get new" do
    get new_themain_url
    assert_response :success
  end

  test "should create themain" do
    assert_difference('Themain.count') do
      post themains_url, params: { themain: {  } }
    end

    assert_redirected_to themain_url(Themain.last)
  end

  test "should show themain" do
    get themain_url(@themain)
    assert_response :success
  end

  test "should get edit" do
    get edit_themain_url(@themain)
    assert_response :success
  end

  test "should update themain" do
    patch themain_url(@themain), params: { themain: {  } }
    assert_redirected_to themain_url(@themain)
  end

  test "should destroy themain" do
    assert_difference('Themain.count', -1) do
      delete themain_url(@themain)
    end

    assert_redirected_to themains_url
  end
end
