require_relative "pwinty/version"
require_relative "pwinty/client"
module Pwinty

end

@merchantId = 'b009d259-91a4-41cf-a496-63cb53426eeb'
@apiKey = '2ce950c6-ce2d-4ba3-a96d-995683629afc'

@me = Pwinty::Client.new(@merchantId, @apiKey)
