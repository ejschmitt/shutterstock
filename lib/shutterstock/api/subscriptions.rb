require 'shutterstock/api/util'
require 'ostruct'

module Shutterstock
  module API
    module Subscriptions
      include Shutterstock::API::Util

      SIZE = OpenStruct.new({
        small: "small",
        medium: "medium",
        huge: "huge",
        vector: "vector"
      })

      FORMAT = OpenStruct.new({
        jpg: "jpg",
        eps: "eps"
      })

      def subscriptions(subscription_id, image_id, size, format, options = {})
        unless subscription_id.nil? || image_id.nil? || size.nil? || format.nil?
          call_with_auth_token(['subscriptions', subscription_id, "images", image_id, "sizes", size], :post, {format: format}.merge(options))
        end
      end
    end
  end
end
