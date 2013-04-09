require 'shutterstock/api/util'
module Shutterstock
  module API
    module Images
      include Shutterstock::API::Util

      BASE_PATH = 'images'

      def search(searchterm, options = {})
        call([BASE_PATH, 'search'], :get, {searchterm: searchterm}.merge(options))
      end
    end
  end
end
