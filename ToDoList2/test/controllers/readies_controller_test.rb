require 'test_helper'

class ReadiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get readies_create_url
    assert_response :success
  end

end
