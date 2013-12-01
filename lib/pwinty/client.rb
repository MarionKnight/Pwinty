require_relative 'request.rb'
require_relative 'connection.rb'
require_relative 'error.rb'
require 'debugger'

module Pwinty
  class Client

    def initialize(merchantId,apiKey)
      @merchantId = merchantId
      @apiKey = apiKey
      @target_url = 'https://sandbox.pwinty.com'
    end

    def create_order
      begin
        response = request1(:get,'https://sandbox.pwinty.com/v2/Orders',{})
        response
      end
    end
    def display_order(order_id)
      begin
        response = request2(:get,"https://sandbox.pwinty.com/v2/Orders/#{order_id}",{})
        response
      end
    end

    def add_to_order(order_id, img)
      response = request3(:get,"https://sandbox.pwinty.com/v2/Orders/#{order_id}",{},img)
      response
    end

    include Connection
    include Request

  end
end
