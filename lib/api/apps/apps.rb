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

	def delete(app_id:)
		method = "DELETE"
		endpoint = "app/" + app_id
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def delete_branding(app_id:)
		method = "DELETE"
		endpoint = "app/" + app_id + "/branding"
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
