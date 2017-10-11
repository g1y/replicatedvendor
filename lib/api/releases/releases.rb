class Releases < ApiModule
	def list_releases(app_id:)
		method = "GET"
		endpoint = "app/" + app_id + "/releases"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def get_releases(app_id:, options:)
		method = "GET"
		endpoint = "app/" + app_id + "/releases/paged"
		uri = ApiUri::build_uri(endpoint, options)
		return self.client.request(method, uri)
	end
end
