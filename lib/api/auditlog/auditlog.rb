class AuditLog < ApiModule
	def initialize(client)
		super(client)
	end

	def get_token(targetid)
		endpoint = "auditlogtoken"
		uri = ApiUri::build_uri(endpoint, {"target_id" => targetid})
		return self.client.request("GET", uri)
	end
end
