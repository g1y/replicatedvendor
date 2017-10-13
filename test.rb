require "./lib/api.rb"

require 'pp'

api_token = ENV['REPLICATED_API_TOKEN']
app_id = ENV['REPLICATED_APP_ID']

unless api_token
   abort("Please set REPLICATED_API_TOKEN in your environment")
end

api = VendorApi.new(api_token)

apps_list = api.apps.list

body = apps_list.body

app_id_list = body.map { |app| app["App"] }

app_id_list.each { |app|
   app_id = app["Id"]
   app_name = app["Name"]
   puts "#{app_id} : #{app_name}"
}
