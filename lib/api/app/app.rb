class App < ApiModule
	def initialize(client)
		super(client)
	end

	def list_branding(appid:)
		endpoint = "app/" + appid + "/branding"
		return self.client.request("GET", endpoint)
	end

	def create_branding(appid:)
		endpoint = "app/" + appid + "/branding"
		return self.client.request("POST", endpoint)
	end

	def list_license_fields(appid:)
		endpoint = "app/" + appid + "/licensefield"
		return self.client.request("GET", endpoint)
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
		return self.client.request("DELETE", endpoint)
	end

	def list_license(appid:)
		endpoint = "app/" + appid + "/licenses"
		return self.client.request("GET", endpoint)
	end
end
