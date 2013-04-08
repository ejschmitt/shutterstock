require "shutterstock/version"
require "shutterstock/configurable"
require "shutterstock/client"

module Shutterstock
  class << self
    include Shutterstock::Configurable
  end
end
