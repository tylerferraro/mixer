module Mixer
  class CPMAnalytic < BaseModel
    attribute :impressions, Integer
    attribute :payout,      Integer
    attribute :channel,     Integer
    attribute :time,        DateTime
  end
end
