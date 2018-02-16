module Mixer
  class Achievement < BaseModel
    attribute :slug,        String
    attribute :name,        String
    attribute :description, String
    attribute :sparks,      Integer
  end
end
