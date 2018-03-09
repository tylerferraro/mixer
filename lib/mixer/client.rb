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

      validate_configuration!
    end

    private

    def connection
      @connection ||= Faraday.new(base_url)
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

    def validate_configuration!
      raise 'Missing attribute: token' if token.nil?
    end

    def headers
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json',
        'Accept-Charset' => 'utf-8',
        'User-Agent' => "mixer-ruby/#{Mixer::VERSION}" \
                        " (#{RUBY_ENGINE}/#{RUBY_PLATFORM}" \
                        " #{RUBY_VERSION}-p#{RUBY_PATCHLEVEL})"
      }
    end

    def base_url
      'https://mixer.com/api/v1'.freeze
    end
  end
end
