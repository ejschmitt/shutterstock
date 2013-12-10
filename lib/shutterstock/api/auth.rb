require 'shutterstock/api/util'
module Shutterstock
  module API
    module Auth
      include Shutterstock::API::Util
      include Shutterstock::Configurable

      BASE_PATH = 'auth'

      def customer(options = {})
        call([BASE_PATH, 'customer'], :post, {username: credentials[:username], password: credentials[:password]}.merge(options))
      end

    end
  end
end
