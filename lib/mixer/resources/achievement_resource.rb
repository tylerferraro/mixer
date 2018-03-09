module Mixer
  class AchievementResource < Resource
    def all
      response = get('achievements')
      if response.success?
        data = JSON.parse(response.body)
        data.map { |opts| Achievement.from_api(opts) }
      end
    end
  end
end
