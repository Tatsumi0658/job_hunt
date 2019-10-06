require 'test_helper'

class ColumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get colum_index_url
    assert_response :success
  end

  test "should get new" do
    get colum_new_url
    assert_response :success
  end

  test "should get show" do
    get colum_show_url
    assert_response :success
  end

end
