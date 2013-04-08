module Shutterstock
  module API
    module Util
      include Shutterstock::Configurable

      ENDPOINT = 'http://api.shutterstock.com'
      def call(path, type, params = {})
        base_url = File.join(ENDPOINT, path)

        uri = URI.parse(base_url)
        uri.query = URI.encode_www_form(params)

        http = Net::HTTP.new(uri.host, uri.port)
        request = Net::HTTP::Get.new(uri.request_uri)
        request.basic_auth(credentials[:username], credentials[:password])
        response = http.request(request)
        JSON.parse(response.body)
      end
    end
  end
end
