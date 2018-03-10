require 'spec_helper'

RSpec.describe Mixer::AchievementResource do
  let(:client) { Mixer::Client.new }

  describe '#all' do
    let(:achievements) do
      VCR.use_cassette('achievements') do
        client.achievements.all
      end
    end

    it 'gets a list of all achievements' do
      expect(achievements.length).to eq(11)
    end

    it 'builds objects from api response' do
      achievement = achievements.first

      expect(achievement.slug).not_to be_nil
      expect(achievement.name).not_to be_nil
      expect(achievement.description).not_to be_nil
      expect(achievement.sparks).not_to be_nil
    end
  end
end
