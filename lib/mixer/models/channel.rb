module Mixer
  class Channel
    attr_accessor :id, :user_id, :token, :online, :featured
      :feature_level, :partnered, :transcoding_profile_id,
      :suspended, :name, :audience, :viewers_total, :viewers_current,
      :num_followers, :description, :type_id, :interactive,
      :interactive_game_id, :ftl, :has_vod, :language_id,
      :cover_id, :thumbnail_id, :badge_id, :banner_url,
      :hostee_id, :has_transcodes, :vods_enabled, :costream_id

    def initialize(data)
      @id                     = data['id']
      @user_id                = data['userId']
      @token                  = data['token']
      @online                 = data['online']
      @featured               = data['featured']
      @feature_level          = data['featureLevel']
      @partnered              = data['partnered']
      @transcoding_profile_id = data['transcodingProfileId']
      @suspended              = data['suspended']
      @name                   = data['name']
      @audience               = data['audience']
      @viewers_total          = data['viewersTotal']
      @viewers_current        = data['viewersCurrent']
      @num_followers          = data['numFollowers']
      @description            = data['description']
      @type_id                = data['typeId']
      @interactive            = data['interactive']
      @interactive_game_id    = data['interactiveGameId']
      @ftl                    = data['ftl']
      @has_vod                = data['hasVod']
      @language_id            = data['languageId']
      @cover_id               = data['coverId']
      @thumbnail_id           = data['thumbnailId']
      @badge_id               = data['badgeId']
      @banner_url             = data['bannerUrl']
      @hostee_id              = data['hosteeId']
      @has_transcodes         = data['hasTranscodes']
      @vods_enabled           = data['vodsEnabled']
      @costream_id            = data['costreamId']
    end
  end
end
