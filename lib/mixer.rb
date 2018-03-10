# Resources
require 'faraday'
require 'faraday_middleware'
require 'json'

# Models
require 'virtus'

# Library
require 'mixer/client'
require 'mixer/connection'
require 'mixer/model'
require 'mixer/resource'
require 'mixer/version'
require 'mixer/models/achievement'
require 'mixer/models/broadcast'
require 'mixer/models/channel'
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
  end
end
