module Mixer
  class BroadcastResource < Resource
    def find(id, params = {})
      data = get("broadcasts/#{id}", params)
      Broadcast.from_api(data)
    end

    def current
      data = get('broadcasts/current')
      Broadcast.from_api(data)
    end
  end
end
