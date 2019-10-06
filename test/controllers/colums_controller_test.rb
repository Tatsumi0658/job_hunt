require 'test_helper'

class ColumsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get colums_new_url
    assert_response :success
  end

  test "should get index" do
    get colums_index_url
    assert_response :success
  end

  test "should get show" do
    get colums_show_url
    assert_response :success
  end

end
