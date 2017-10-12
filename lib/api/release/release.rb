class Release < ApiModule
	def create(appid:,  options:)
		method = "POST"
		endpoint = "app/" << appid << "/release"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def archive(appid:, squence:)
		method = "POST"
		endpoint = "app/" << appid << "/" << sequence << "/archive"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def get_preflight_checks(appid:, sequence:)
		method = "GET"
		endpoint = "app/" << appid << "/" << sequence << "/preflightchecks"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def promote(appid:, sequence:, options:)
		method = "POST"
		endpoint = "app/" << appid << "/" << sequence << "/promote"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri, options)
	end

	def get_properties(appid:, sequence:)
		method = "GET"
		endpoint = "app/" << appid << "/" << sequence << "/properties"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def get_config(appid:, sequence:)
		method = "GET"
		endpoint = "app/" << appid << "/" << sequence << "/raw"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def update_config(appid:, sequence:)
		method = "PUT"
		endpoint = "app/" << appid << "/" << sequence << "/raw"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end
end
