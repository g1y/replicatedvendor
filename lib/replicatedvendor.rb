require_relative "./client/client.rb"

require_relative "./api/apimodule.rb"

class VendorApi
	def initialize(api_token = nil)
		@api_token = api_token
		@client = ApiClient.new()
		@client.set_token(@api_token)
	end

	def app
		return App.new(@client)
	end

	def apps
		return Apps.new(@client)
	end

	def auditlog
		return AuditLog.new(@client)
	end

	def auth
		return Auth.new(@client)
	end

	def channel
		return Channel.new(@client)
	end

	def license
		return License.new(@client)
	end

	def licenes
		return Licenses.new(@client)
	end

	def release
		return Release.new(@client)
	end

	def releases
		return Releases.new(@client)
	end

	def team
		return Team.new(@client)
	end
end
