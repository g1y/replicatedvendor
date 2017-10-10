require_relative "./client/client.rb"

require_relative "./api/apimodule.rb"

class VendorApi
	def initialize(api_token = nil)
		@api_token = api_token
		@client = ApiClient.new()
	end

	def app

	end

	def apps

	end

	def auditlog

	end

	def auditlog

	end

	def auth

	end

	def channel

	end

	def license

	end

	def licenes

	end

	def release

	end

	def releases

	end

	def team

	end
end
