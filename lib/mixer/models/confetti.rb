module Mixer
  class Confetti < Model
    attribute :id,         Integer
    attribute :channel_id, Integer
    attribute :settings,   Setting
  end
end
