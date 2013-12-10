module Shutterstock
  module Configurable
    attr_writer :api_username, :api_key, :username, :password, :email

    class << self
      def keys
        @keys ||= [
          :api_username,
          :api_key,
          :username,
          :password,
          :email
        ]
      end
    end

    def configure
      yield self
      self
    end

    def credentials
      {
        api_username: @api_username,
        api_key: @api_key,
        username: @username,
        password: @password,
        email: @email
      }
    end
  end
end
