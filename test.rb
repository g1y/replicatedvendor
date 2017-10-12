require "./lib/api.rb"

require 'pp'

api_token = ENV['REPLICATED_API_TOKEN']
app_id = ENV['REPLICATED_APP_ID']

unless api_token
   abort("Please set REPLICATED_API_TOKEN in your environment")
end

api = VendorApi.new(api_token)

pp api.apps.list
