module Mixer
  class AchievementEarning < BaseModel
    attribute :id,          Integer
    attribute :earned,      Boolean
    attribute :progress,    Integer
    attribute :achievement, String
    attribute :user,        Integer
    attribute :achievement, Achievement
    attribute :created_at,  DateTime
    attribute :updated_at,  DateTime
    attribute :deleted_at,  DateTime
  end
end
