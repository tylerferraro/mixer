module Mixer
  class AchievementResource < Resource
    def all
      get('achievements').map { |opts| Achievement.from_api(opts) }
    end
  end
end
