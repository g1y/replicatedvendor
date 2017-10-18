class Team < ApiModule
	def initialize(client)
		super(client)
	end

	def invite_to_team(appid, options)
		method = "POST"
		endpoint = "team/invite/" << appid << "/signup"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri, options)
	end
end
