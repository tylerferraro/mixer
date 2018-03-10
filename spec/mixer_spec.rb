RSpec.describe Mixer do
  it 'has a version number' do
    expect(Mixer::VERSION).not_to be nil
  end

  describe '.configure' do
    let(:token) { 'abcdef' }

    it 'sets the oauth class variable' do
      Mixer.configure { |config| config.token = token }
      expect(Mixer.token).to eq(token)
    end
  end
end
