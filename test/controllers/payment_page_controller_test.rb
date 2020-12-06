require 'test_helper'

class PaymentPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get payment_page_index_url
    assert_response :success
  end

  test "should get success" do
    get payment_page_success_url
    assert_response :success
  end

end
