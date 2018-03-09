module Mixer
  class ChannelAdvanced < Model
    attribute :id,                     Integer
    attribute :user_id,                Integer
    attribute :token,                  String
    attribute :online,                 Boolean
    attribute :featured,               Boolean
    attribute :feature_level,          Integer
    attribute :partnered,              Boolean
    attribute :transcoding_profile_id, Integer
    attribute :suspended,              Boolean
    attribute :name,                   String
    attribute :audience,               String
    attribute :viewers_total,          Integer
    attribute :viewers_current,        Integer
    attribute :num_followers,          Integer
    attribute :description,            String
    attribute :type_id,                Integer
    attribute :interactive,            Boolean
    attribute :interactive_game_id,    Integer
    attribute :ftl,                    Integer
    attribute :has_vod,                Boolean
    attribute :language_id,            String
    attribute :cover_id,               Integer
    attribute :thumbnail_id,           Integer
    attribute :badge_id,               Integer
    attribute :banner_url,             String
    attribute :hostee_id,              Integer
    attribute :has_transcodes,         Boolean
    attribute :vods_enabled,           Boolean
    attribute :costream_id,            String
    attribute :type,                   GameType
    attribute :user,                   UserWithGroups
    attribute :created_at,             DateTime
    attribute :updated_at,             DateTime
    attribute :deleted_at,             DateTime
  end
end
