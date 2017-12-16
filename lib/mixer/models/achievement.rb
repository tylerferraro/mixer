module Mixer
  class Achievement
    attr_accessor :slug, :name, :description, :sparks

    def initialize(data)
      @slug        = data['slug']
      @name        = data['name']
      @description = data['description']
      @sparks      = data['sparks']
    end
  end
end
