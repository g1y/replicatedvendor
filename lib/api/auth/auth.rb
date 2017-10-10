class Auth < ApiModule
	def login(options:)
		method = "POST"
		endpoint = "user/login"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri, options)
	end

	def login_otp(options:)
		method = "POST"
		endpoint = "user/login/otp"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri, options)
	end

	def logout()
		method = "POST"
		endpoint = "user/logout"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def signup(options:)
		method = "POST"
		endpoint = "user/signup"
		uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri, options)
	end
end
