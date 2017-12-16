module Mixer
  class BaseResource
    extend Forwardable
    def_delegators :@connection, :get, :post, :put, :delete

    def initialize(connection)
      @connection = connection
    end
  end
end
