require 'uri'

class ApiUri
   VENDOR_HOST = "api.replicated.com"
   VENDOR_BASE_PATH = "/vendor/v1"

   def self.build_uri(endpoint, params = nil)
      uri_base = "https://" << VENDOR_HOST
      uri = URI(uri_base)

      uri.path = VENDOR_BASE_PATH << "/" << endpoint

      if params
         uri.query = URI.encode_www_form(params)
      end

      return uri
   end
end
