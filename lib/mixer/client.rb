module Mixer
  class Client
    class << self
      def resources
        {
          achievements: AchievementResource,
          broadcasts: BroadcastResource
        }
      end
    end

    attr_reader :token

    def initialize(token: nil)
      @token = token || Mixer.token
    end

    private

    def connection
      @connection ||= Connection.new(token)
    end

    def method_missing(name, *args, &block)
      if self.class.resources.keys.include?(name)
        resources[name] ||= self.class.resources[name].new(connection)
        resources[name]
      else
        super
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      self.class.resources.keys.include?(method_name.to_s) || super
    end

    def resources
      @resources ||= {}
    end
  end
end
