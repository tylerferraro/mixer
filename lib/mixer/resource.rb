module Mixer
  class Resource
    extend Forwardable
    def_delegators :@connection, :get, :post, :put, :delete

    def initialize(connection)
      @connection = connection
    end
  end
end
