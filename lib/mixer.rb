require 'faraday'
require 'faraday_middleware'
require 'json'

require 'mixer/client'
require 'mixer/models/achievement'
require 'mixer/resources/base_resource'
require 'mixer/resources/achievement_resource'
require 'mixer/version'

module Mixer
  class << self
    attr_accessor :token

    def configure
      yield self
    end

    # Only Version 1.0 API currently available on Mixer
    def api_version
      '1.0'.freeze
    end
  end
end
