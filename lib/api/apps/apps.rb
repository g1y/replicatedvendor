class Apps < ApiModule
	def initialize(client)
		super(client)
	end

	def list()
		method = "GET"
		endpoint = "app"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def delete(appid:)
		method = "DELETE"
		endpoint = "app/" + appid
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def delete_branding(appid:)
		method = "DELETE"
		endpoint = "app/" + appid + "/branding"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def create(options:)
		method = "POST"
		endpoint = "app"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri, options)
	end
end
