class AuditLog < ApiModule
	def initialize(client)
		super(client)
		@ENDPOINT = client.ENDPOINT << "/auditlogtoken"
	end

	def get_token(targetid)
		endpoint = self.ENDPOINT << "?target_id=" << targetid
		return self.client.request("GET", endpoint)
	end
end
