module Mixer
  class BroadcastResource < Resource
    def find(id, params = {})
      response = get("broadcasts/#{id}", params)
      if response.success?
        data = JSON.parse(response.body)
        Broadcast.new(data)
      end
    end

    def current(params = {})
      response = get('broadcasts/current', params)
      if response.success?
        data = JSON.parse(response.body)
        Broadcast.new(data)
      end
    end
  end
end
