module Mixer
  class BroadcastResource < Resource
    def find(id, params = {})
      data = get("broadcasts/#{id}", params)
      Broadcast.new(data)
    end

    def current(params = {})
      data = get('broadcasts/current', params)
      Broadcast.new(data)
    end
  end
end
