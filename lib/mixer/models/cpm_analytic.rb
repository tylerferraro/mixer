module Mixer
  class CPMAnalytic < Model
    attribute :impressions, Integer
    attribute :payout,      Integer
    attribute :channel,     Integer
    attribute :time,        DateTime
  end
end
