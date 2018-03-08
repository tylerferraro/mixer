# Notes

## Getting and using an OAuth Token

Run the Example Sinatra OAuth application `ruby ./app.rb`

```
# app.rb
require 'sinatra'
require 'oauth2'

def client
  client_id = '<CLIENT_ID>'
  client_secret = '<CLIENT_SECRET>'
  client = OAuth2::Client.new(client_id, client_secret, site: 'https://mixer.com', token_url: '/api/v1/oauth/token')
end

get '/oauth/callback' do
  auth_code = params['code']
  token = client.auth_code.get_token(auth_code) unless auth_code.nil?

  "Auth Code: #{auth_code}\nToken: #{token&.token}"
end
```

Use authorization code to request a token

```
require 'oauth2'

client_id = '<CLIENT_ID>'
client_secret = '<CLIENT_SECRET>'
client = OAuth2::Client.new(client_id, client_secret, site: 'https://mixer.com', token_url: '/api/v1/oauth/token')
client.auth_code.authorize_url(redirect_uri: 'http://localhost:4567/oauth/callback')

token = client.auth_code.get_token(auth_code, :redirect_uri => 'http://localhost:4567/auth/callback')
```

Example of making a request with a token

```
require 'faraday'
require 'faraday_middleware'
require 'json'

connection = Faraday.new('https://mixer.com/api/v1') do |b|
  b.use     FaradayMiddleware::OAuth2, 'TOKEN', :token_type => 'bearer'
  b.adapter Faraday.default_adapter
end

response = connection.get('users/current')
data = JSON.parse(response.body)
```