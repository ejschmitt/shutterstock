require 'shutterstock/api/util'
module Shutterstock
  module API
    module Images
      include Shutterstock::API::Util

      def search(searchterm)
        call('images/search.json', :get, {searchterm: searchterm})
      end
    end
  end
end
