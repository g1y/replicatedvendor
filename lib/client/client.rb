require "net/http"
require "uri"
require "ostruct"
require "json"

class ApiClient
	VENDOR_HOST = "api.replicated.com"
	VERB_MAP = {
		:get	 => Net::HTTP::Get,
		:post	=> Net::HTTP::Post,
		:put	 => Net::HTTP::Put,
		:delete => Net::HTTP::Delete
	}

	def initialize
		# Create persistent HTTP connection
		@http = Net::HTTP.new(VENDOR_HOST, URI::HTTPS::DEFAULT_PORT,
		 :use_ssl => uri.scheme == 'https')
	end

	def set_token(api_token)
		@api_token = api_token
	end

	def request_json(method, uri, params = nil)
		response = request(method, uri, params)
		body = JSON.parse(response.body)

		OpenStruct.new(:code => response.code, :body => body)
	rescue JSON::ParserError
		response
	end

	def request(method, uri, params)
		method_sym = method.downcase.to_sym

		request = VERB_MAP[method_sym].new(uri)

		unless method_sym.is_eql? :get
			request.set_form_data(params)
		end

		if @api_token
			request['Authorization'] = @api_token
		end

		@http.request(request)
	end
end
