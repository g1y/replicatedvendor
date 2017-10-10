require 'uri'

class ApiUri
   VENDOR_HOST = "api.replicated.com"
   VENDOR_BASE_PATH = "/vendor/v1"

   def self.build_uri(module_name, endpoint = nil, params = nil)
      uri_base = "https://" << VENDOR_HOST
      uri = URI(uri_base)

      path = VENDOR_BASE_PATH << "/" << module_name
      if endpoint
         path = path << "/" << endpoint
      end
      uri.path = path

      if params
         uri.query = URI.encode_www_form(params)
      end

      return uri
   end
end
