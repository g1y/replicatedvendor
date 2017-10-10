class App < ApiModule
	def initialize(client)
		super(client)
	end

	def list_branding(appid:)
		method = "GET"
		endpoint = "app/" + appid + "/branding"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def create_branding(appid:)
		method = "POST"
		endpoint = "app/" + appid + "/branding"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, endpoint)
	end

	def list_license_fields(appid:)
		method = "GET"
		endpoint = "app/" + appid + "/licensefield"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, endpoint)
	end

	def create_license_field(appid:, options:)
		endpoint = "app/" + appid + "/licensefield"
		return self.client.request("POST", endpoint, options)
	end

	def edit_license_field(appid:, license_field_name:, options:)
		endpoint = "app/" + appid + "/licensefield/" + license_field_name
		return self.client.request("PUT", endpoint, options)
	end

	def delete_license_field(appid:, license_field_name:)
		endpoint = "app/" + appid + "/licensefield/" + license_field_name
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, endpoint)
	end

	def list_license(appid:)
		method = "GET"
		endpoint = "app/" + appid + "/licenses"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, endpoint)
	end
end
