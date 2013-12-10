require 'shutterstock/api/util'
require 'shutterstock/api/images'
require 'shutterstock/api/subscriptions'
require 'shutterstock/api/auth'

module Shutterstock
  class Client
    include Shutterstock::Configurable
    include Shutterstock::API::Images
    include Shutterstock::API::Subscriptions
    include Shutterstock::API::Auth

    def initialize(options={})
      Shutterstock::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Shutterstock.instance_variable_get(:"@#{key}"))
      end
    end

  end
end
