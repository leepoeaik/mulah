require "test_helper"

class CsvDataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get csv_data_index_url
    assert_response :success
  end
end
