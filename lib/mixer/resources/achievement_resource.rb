module Mixer
  class AchievementResource < BaseResource
    def all(params = {})
      response = get('achievements', params)
      if response.success?
        data = JSON.parse(response.body)
        achievements = data.map { |opts| Achievement.new(opts) }
      else
        # Error
      end
    end
  end
end
