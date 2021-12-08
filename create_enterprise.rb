unless ENV['GOOGLE_AMAPI_TOKEN']
  raise 'export GOOGLE_AMAPI_TOKEN=xxxx   is required.'
end

require_relative './service_account'
require 'net/http'

response = Net::HTTP.post(
  URI("https://androidmanagement.googleapis.com/v1/enterprises?agreementAccepted=true&projectId=#{service_account['project_id']}"),
  { # post body
    'enterpriseDisplayName': 'いわき家',
  }.to_json,
  { # header
    'Content-Type' => 'application/json',
    'Authorization' => "Bearer #{ENV['GOOGLE_AMAPI_TOKEN']}"
  },
)
puts JSON.parse(response.body)
