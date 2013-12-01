# Usage: response = request(:get,"https://sandbox.pwinty.com/v2/Orders/#{id}",{})

module Pwinty
  class Client
    module Request

      #ToDo:: Refactor the requests back into one method,
      #       then update the client.rb to match

      def request1(action,path,options)
        header_1 = "X-Pwinty-MerchantId: #{@merchantId}"
        header_2 = "X-Pwinty-REST-API-Key: #{@apiKey}"
        cmd = "curl #{path} -H \"#{header_1}\" -H \"#{header_2}\" -d countryCode=GB -d qualityLevel=Pro -d useTracked=true -d recipientName=Mr%20Jones -d address1=The%20Hollies -d addressTownOrCity=Cardiff -d stateOrCounty=Glamorgan -d postalOrZipCode=CF11%201AX -d payment=InvoiceMe"
        value = `#{cmd}`
        # $? will return the status
        # debugger
        new_value = value.split(/\"/).join
        order_id = new_value.match(/:(\d*)/)[1]
        order_id
      end

      def request2(action,path,options)
        header_1 = "X-Pwinty-MerchantId: #{@merchantId}"
        header_2 = "X-Pwinty-REST-API-Key: #{@apiKey}"
        cmd = "curl #{path} -H \"#{header_1}\" -H \"#{header_2}\""
        value = `#{cmd}`
        value
      end

      def request3(action,path,options,img)
        header_1 = "X-Pwinty-MerchantId: #{@merchantId}"
        header_2 = "X-Pwinty-REST-API-Key: #{@apiKey}"
        cmd = "curl #{path} -H \"#{header_1}\" -H \"#{header_2}\" -d type=8x12 -d url=http%3A%2F%2Fdistilleryimage11.ak.instagram.com%2Fd33aafc8b55d11e2a66b22000a9f09de_7.jpg -d md5Hash=\"79054025255fb1a26e4bc422aef54eb4\" -d copies=1 -d priceToUser=299 -d sizing=Crop"
        value = `#{cmd}`
        value
      end

    end
  end
end
