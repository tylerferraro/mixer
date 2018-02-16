module Mixer
  class ChannelPreferences < BaseModel
    attribute :sharetext,                      String
    attribute :channel_links_allowed,          Boolean
    attribute :channel_links_clickable,        Boolean
    attribute :channel_slow_chat,              Integer
    attribute :channel_notify_subscribemessage String
    attribute :channel_notify_subscribe        Boolean
    attribute :channel_notify_followmessage    String
    attribute :channel_notify_follow           Boolean
    attribute :channel_notify_hosted_by        String
    attribute :channel_notify_hosting          String
    attribute :channel_partner_submail         String
    attribute :channel_player_mute_own         Boolean
    attribute :channel_tweet_enabled           Boolean
    attribute :channel_tweet_body              String
    attribute :costream_allow                  Boolean
    attribute :channel_offline_autoplay_vod    Boolean
  end
end
