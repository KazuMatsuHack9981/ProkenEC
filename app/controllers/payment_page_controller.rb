require "net/https"
require "json"

class PaymentPageController < ApplicationController
  def index
  end

  def apipost
    endpoint = URI.parse("https://urlorcx7vi.execute-api.ap-northeast-1.amazonaws.com/any/payment")
    http = Net::HTTP.new(endpoint.host, endpoint.port)
    http.use_ssl = endpoint.scheme == "https"
    headers = { "Content-Type"=>"application/json" }

    apikey = "a1b2c3d4f5"
    cardnum = current_user.credit_card.number
    params = { "apikey"=>apikey, "cardnum"=>cardnum }

    res = http.post(endpoint.path, params.to_json, headers)
    result = JSON.parse(res.body)
    result = JSON.parse(result["body"])

    if result["payment"]=="success" then
      redirect_to payment_page_success_path
    elsif result["payment"] == "wrong_key" then
      logger.info(result["body"]["payment"])
      redirect_to payment_page_index_path
    else
      logger.info(result)
      redirect_to payment_page_index_path
    end

  end

  def success
  end

end
