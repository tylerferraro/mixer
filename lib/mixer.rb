require 'faraday'
require 'faraday_middleware'
require 'json'
require 'virtus'

require 'mixer/client'
require 'mixer/version'
require 'mixer/models/base_model'
require 'mixer/models/achievement'
require 'mixer/models/broadcast'
require 'mixer/models/channel'
require 'mixer/resources/base_resource'
require 'mixer/resources/achievement_resource'
require 'mixer/resources/broadcast_resource'
require 'mixer/utils/hash_util'
require 'mixer/utils/string_util'


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
