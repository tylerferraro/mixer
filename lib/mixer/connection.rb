module Mixer
  class Connection
    attr_reader :token

    def initialize(token)
      @token = token
    end

    def get(url, opts = {})
      request(:get, url, opts)
    end

    private

    def request(http_method, url, opts = {})
      response = build_connection.public_send(http_method, url, opts)
      raise StandardError unless response.success?

      JSON.parse(response.body)
    end

    def build_connection
      Faraday.new(base_url) do |builder|
        builder.use(FaradayMiddleware::OAuth2, token) unless token.nil?
        builder.adapter(Faraday.default_adapter)
      end
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
