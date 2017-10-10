class AuditLog < ApiModule
	def initialize(client)
		super(client)
	end

	# Expects query parameter target_id
	def get_token(params)
		endpoint = "auditlogtoken"
		uri = ApiUri::build_uri(endpoint, params)
		return self.client.request("GET", uri)
	end
end
