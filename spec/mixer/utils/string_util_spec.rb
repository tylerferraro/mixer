require 'spec_helper'

RSpec.describe Mixer::StringUtil do
  let(:camelcase) { 'someVariableName' }
  let(:snakecase) { 'some_variable_name' }

  describe '.camelize' do
    it 'converts snake_case to camelCase' do
      expect(described_class.camelize(snakecase)).to eq(camelcase)
    end

    it 'accepts symbols as input' do
      expect(described_class.camelize(snakecase.to_sym)).to eq(camelcase)
    end
  end

  describe '.serpentize' do
    it 'converts camelCase to snake_case' do
      expect(described_class.serpentize(camelcase)).to eq(snakecase)
    end
  end
end
