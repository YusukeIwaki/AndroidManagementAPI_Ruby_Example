require_relative './service_account'

require 'jwt'
require 'openssl'
require 'time'

now = Time.now.to_i

claim = {
  iss: service_account['client_email'],
  scope: 'https://www.googleapis.com/auth/androidmanagement',
  aud:"https://oauth2.googleapis.com/token",
  iat: now,
  exp: now + 3600
}

private_key = OpenSSL::PKey::RSA.new(service_account['private_key'])
jwt = JWT.encode(claim, private_key, 'RS256')


require 'net/http'

response = Net::HTTP.post_form(
  URI('https://oauth2.googleapis.com/token'),
  {
    grant_type: 'urn:ietf:params:oauth:grant-type:jwt-bearer',
    assertion: jwt,
  },
)
puts JSON.parse(response.body)
