class License < ApiModule
	def create(options:)
		method = "POST"
		endpoint = "license"
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri, options)
	end

	def get(license_id:)
		method = "GET"
		endpoint = "license/" << license_id
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def update(license_id:, options:)
		method = "PUT"
		endpoint = "license/" << license_id
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri, options)
	end

	def archive(license_id:)
		method = "DELETE"
		endpoint = "license/" << license_id
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def update_airgap(license_id:)
		method  = "POST"
		endpoint = "license/" << license_id << "/airgap/password"
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def update_billing(license_id:, options:)
		method = "PUT"
		endpoint = "license/" << license_id << "/billing"	
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def create_billing_event(license_id:, options:)
		method = "POST"
		endpoint = "license/" << license_id << "/billling_event"
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri, options)
	end

	def update_billing_event(license_id:, billing_event_id:, options:)
		method = "PUT"
		endpoint = "license/" << license_id << "/billing_event/" <<
			billing_event_id
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri, options)
	end

	def update_channel(license_id:, options:)
		method = "PUT"
		endpoint = "license/" << license_id << "/channel"
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri, options)
	end

	def update_expiration(license_id:, options:)
		method = "PUT"
		endpoint = "license/" << license_id << "/expire"
		uri = ApiUri.build_uri(endpoint)
		return self.client.request(method, uri, options)
	end
end
