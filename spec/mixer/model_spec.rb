require 'spec_helper'

RSpec.describe Mixer::Model do
  describe '.from_api' do
    let(:api_hash) do
      {
        'someVariableName' => 'this',
        'another' => 'that'
      }
    end

    let(:object_opts) do
      {
        some_variable_name: 'this',
        another: 'that'
      }
    end

    it 'initializes a new object from an api hash' do
      expect(described_class).to receive(:new).with(object_opts)
      described_class.from_api(api_hash)
    end
  end
end
