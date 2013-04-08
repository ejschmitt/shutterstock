module Shutterstock
  module Configurable
    attr_writer :username, :password

    class << self
      def keys
        @keys ||= [
          :username,
          :password
        ]
      end
    end

    def configure
      yield self
      self
    end

    def credentials
      {
        username: @username,
        password: @password
      }
    end
  end
end
