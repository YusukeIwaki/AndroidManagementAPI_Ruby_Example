unless ENV['GOOGLE_AMAPI_TOKEN']
  raise 'export GOOGLE_AMAPI_TOKEN=xxxx   is required.'
end
unless ENV['GOOGLE_AMAPI_ENTERPRISE']
  raise 'export GOOGLE_AMAPI_ENTERPRISE=xxxx   is required.'
end


require_relative './service_account'
require 'net/http'

response = Net::HTTP.post(
  URI("https://androidmanagement.googleapis.com/v1/#{ENV['GOOGLE_AMAPI_ENTERPRISE']}/enrollmentTokens"),
  { # post body
    'name': 'いわき家へのエンロールメントトークン',
    'policyName': "#{ENV['GOOGLE_AMAPI_ENTERPRISE']}/policies/iwaki1",
  }.to_json,
  { # header
    'Content-Type' => 'application/json',
    'Authorization' => "Bearer #{ENV['GOOGLE_AMAPI_TOKEN']}"
  },
)
puts JSON.parse(response.body)
