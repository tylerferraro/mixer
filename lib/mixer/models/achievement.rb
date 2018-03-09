module Mixer
  class Achievement < Model
    attribute :slug,        String
    attribute :name,        String
    attribute :description, String
    attribute :sparks,      Integer
  end
end
