class App < ApiModule
	def initialize(client)
		super(client)
	end

	def list_branding(appid)
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

	def create_license_field(appid:, default:, hidden:, name:, required:, title:, type:)
		endpoint = "app/" + appid + "/licensefield"
		return self.client.request("POST", endpoint, {
			"default": default,
			"hidden": hidden,
			"name": name,
			"required": required,
			"title": title,
			"type": type,
		})
	end

	def edit_license_field(appid, license_field_name, default, hidden, title)
		endpoint = "app/" + appid + "/licensefield/" + license_field_name
		return self.client.request("PUT", endpoint, {
			"default": default,
			"hidden": hidden,
			"title": title,
		})
	end

	def delete_license_field(appid, license_field_name)
		endpoint = "app/" + appid + "/licensefield/" + license_field_name
		return self.client.request("DELETE", endpoint)
	end

	def list_license(appid)
		endpoint = "app/" + appid + "/licenses"
		return self.client.request("GET", endpoint)
	end
end
