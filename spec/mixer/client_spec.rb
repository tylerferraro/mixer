require 'spec_helper'

describe Mixer::Client do
  subject { described_class.new(token: token) }

  let(:token) { 'abc' }
end
