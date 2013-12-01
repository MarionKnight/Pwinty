require_relative 'request.rb'
require_relative 'connection.rb'
require_relative 'error.rb'
module Pwinty
  class Client

    def initialize(merchantId,apiKey)
      @merchantId = merchantId
      @apiKey = apiKey
      @target_url = 'https://sandbox.pwinty.com'
    end

    def get_orders
      begin
        response = request(:get,'https://sandbox.pwinty.com/v2/Orders',{})
        response
      end
    end
    def get_order(id)
      response = request(:get,"https://sandbox.pwinty.com/v2/Orders/#{id}",{})
      response
    end
    include Connection
    include Request

  end
end
