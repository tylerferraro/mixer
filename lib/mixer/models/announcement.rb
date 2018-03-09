module Mixer
  class Announcement < Model
    attribute :message,  String
    attribute :timeout,  Integer
    attribute :sound,    String
    attribute :level,    String
    attribute :confetti, Integer # or boolean, use custom attribute
  end
end
