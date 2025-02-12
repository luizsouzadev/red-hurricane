require "test_helper"

class TempoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tempo_index_url
    assert_response :success
  end

  test "should get show" do
    get tempo_show_url
    assert_response :success
  end
end
