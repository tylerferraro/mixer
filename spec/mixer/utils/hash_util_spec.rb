require 'spec_helper'

RSpec.describe Mixer::HashUtil do
  let(:hash) do
    {
      a: 10,
      b: 'this'
    }
  end

  let(:transformed_hash) do
    {
      'a' => 10,
      'b' => 'this'
    }
  end

  describe '.transform_keys' do
    it 'transforms keys based on block' do
      result = described_class.transform_keys(hash) { |key| key.to_s }
      expect(result).to eq(transformed_hash)
    end
  end
end
