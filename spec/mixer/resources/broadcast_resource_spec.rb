require 'spec_helper'

RSpec.describe Mixer::BroadcastResource do
  let(:client) { Mixer::Client.new }

  describe '.current' do
    context 'without oauth token' do
      it 'raises an unauthorized error' do
        expect { client.broadcasts.current }.to raise_error(Mixer::UnauthorizedError)
      end
    end

    context 'with valid oauth token' do
      it 'returns the current broadcast' do
        expect(client.broadcasts.current).not_to be_nil
      end
    end

    context 'with no current broadcast' do
      it 'returns a nil object' do
        expect(client.broadcasts.current).to be_nil
      end
    end
  end

  describe '.find' do
    let(:id) { 1 }

    context 'without oauth token' do
      it 'raises an unauthorized error' do
        expect { client.broadcasts.find(id) }.to raise_error(Mixer::UnauthorizedError)
      end
    end

    context 'with valid oauth token' do
      it 'returns the broadcast' do
        broadcast = client.broadcasts.find(id)
        expect(broadcast.id).to eq(id)
      end
    end

    context 'with unknown id' do
      let(:id) { 0 }

      it 'raises a not found error' do
        expect { client.broadcasts.find(invalid_id) }.to raise_error(Mixer::NotFoundError)
      end
    end
  end

  describe '.manifest' do
  end
end
