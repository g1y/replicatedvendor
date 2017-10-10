class Team < ApiModule
	def initialize(client)
		super(client)
	end

	def invite_to_team(appid:)
		method = "POST"
		endpoint = "team/invite/" << appid << "/signup"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end
end
