module Mixer
  class BroadcastResource < BaseResource
    def find(id, params = {})
      response = get("broadcasts/#{id}", params)
      if response.success?
        data = JSON.parse(response.body)
        broadcast = Broadcast.new(data)
      else
        # Error
      end
    end

    def current(params = {})
      response = get('broadcasts/current', params)
      if response.success?
        data = JSON.parse(response.body)
        broadcast = Broadcast.new(data)
      else
        # Error
      end
    end

    # TODO
    # GET /broadcasts/{broadcastId}/manifest.{type}
    # This endpoint is identical to /channels/{id}/manifest.{format}
  end
end
