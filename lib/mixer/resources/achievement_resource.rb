module Mixer
  class AchievementResource < BaseResource
    def all
      response = get('achievements')
      if response.success?
        data = JSON.parse(response.body)
        data.map { |opts| Achievement.from_api(opts) }
      else
        # Error
      end
    end
  end
end
