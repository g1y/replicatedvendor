class AuditLog < ApiModule
	def initialize(client)
		super(client)
	end

	def get_token(targetid)
		endpoint = "auditlog"
		params = {target_id: targetid}
		return self.client.request("GET", endpoint, params)
	end
end
