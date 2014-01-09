require 'net/http'
require 'json'

module Shutterstock
  module API
    module Util
      include Shutterstock::Configurable

      FORMAT = :json
      ENDPOINT = 'http://api.shutterstock.com'

      def call(path, type, params = {})
        base_url = "#{ File.join(ENDPOINT, path) }.#{ FORMAT }"

        uri = URI.parse(base_url)
        uri.query = URI.encode_www_form(params)

        http = Net::HTTP.new(uri.host, uri.port)
        case type
        when :get
          request = Net::HTTP::Get.new(uri.request_uri)
        when :post
          request = Net::HTTP::Post.new(uri.request_uri)
        end
        request.basic_auth(credentials[:api_username], credentials[:api_key])
        response = http.request(request)
        JSON.parse(response.body)
      end

      def call_with_auth_token(path, type, params = {})
        call(path, type, {auth_token: customer["auth_token"]}.merge(params))
      end

    end
  end
end
