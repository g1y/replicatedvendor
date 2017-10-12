class App < ApiModule
	def initialize(client)
		super(client)
	end

	def list_branding(app_id:)
		method = "GET"
		endpoint = "app/" + app_id + "/branding"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def create_branding(app_id:)
		method = "POST"
		endpoint = "app/" + app_id + "/branding"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def list_license_fields(app_id:)
		method = "GET"
		endpoint = "app/" + app_id + "/licensefield"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def create_license_field(app_id:, options:)
		method = "POST"
		endpoint = "app/" + app_id + "/licensefield"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri, options)
	end

	def edit_license_field(app_id:, license_field_name:, options:)
		method = "PUT"
		endpoint = "app/" + app_id + "/licensefield/" + license_field_name
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri, options)
	end

	def delete_license_field(app_id:, license_field_name:)
		method = "DELETE"
		endpoint = "app/" + app_id + "/licensefield/" + license_field_name
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def list_license(app_id:)
		method = "GET"
		endpoint = "app/" + app_id + "/licenses"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end
end
