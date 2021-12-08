unless ENV['GOOGLE_AMAPI_TOKEN']
  raise 'export GOOGLE_AMAPI_TOKEN=xxxx   is required.'
end
unless ENV['GOOGLE_AMAPI_ENTERPRISE']
  raise 'export GOOGLE_AMAPI_ENTERPRISE=xxxx   is required.'
end


require_relative './service_account'
require 'net/http'

url = URI("https://androidmanagement.googleapis.com/v1/#{ENV['GOOGLE_AMAPI_ENTERPRISE']}/policies/iwaki1")
req = Net::HTTP::Patch.new(url.path)
req.body = { # post body
"applications" => [
  {
    "packageName" => "com.google.samples.apps.iosched",
    "installType" => "FORCE_INSTALLED"
  }
],
"debuggingFeaturesAllowed" => true
}.to_json
req['Content-Type'] = 'application/json'
req['Authorization'] = "Bearer #{ENV['GOOGLE_AMAPI_TOKEN']}"
response = Net::HTTP.start(url.host, url.port, use_ssl: url.scheme == 'https') do |http|
  http.request(req)
end
puts JSON.parse(response.body)
