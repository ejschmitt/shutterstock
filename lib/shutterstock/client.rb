require 'shutterstock/api/util'
require 'shutterstock/api/images'

module Shutterstock
  class Client
    include Shutterstock::Configurable
    include Shutterstock::API::Images

    def initialize(options={})
      Shutterstock::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Shutterstock.instance_variable_get(:"@#{key}"))
      end
    end

  end
end
