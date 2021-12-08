require_relative './service_account'

require 'googleauth'
require 'stringio'

def create_token
  authorizer = Google::Auth::ServiceAccountCredentials.make_creds(
    json_key_io: StringIO.new(service_account.to_json),
    scope: 'https://www.googleapis.com/auth/androidmanagement'
  )
  authorizer.fetch_access_token!
end

puts create_token
