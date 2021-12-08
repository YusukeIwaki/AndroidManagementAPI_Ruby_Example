require_relative './service_account'

require 'googleauth'
require 'stringio'

def create_token_authorizer
  authorizer = Google::Auth::ServiceAccountCredentials.make_creds(
    json_key_io: StringIO.new(service_account.to_json),
    scope: 'https://www.googleapis.com/auth/androidmanagement'
  )
  authorizer.fetch_access_token!
  authorizer
end

require 'google/apis/androidmanagement_v1'

def create_enterprise
  client = Google::Apis::AndroidmanagementV1::AndroidManagementService.new
  client.authorization = create_token_authorizer
  enterprise_request = Google::Apis::AndroidmanagementV1::Enterprise.new
  enterprise_request.enterprise_display_name = 'いわき家'
  client.create_enterprise(enterprise_request,
            project_id: service_account['project_id'],
            agreement_accepted: true)
end

puts create_enterprise.inspect
