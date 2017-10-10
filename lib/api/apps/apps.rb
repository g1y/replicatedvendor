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

	def delete(appid)
		unless appid.is_a? Integer
			raise "Non integer appid"
		end
		method = "DELETE"
		endpoint = "app/" + appid
      uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def delete_branding(appid)
		unless appid.is_a? Integer
			raise "Non integer appid"
		end
		method = "DELETE"
		endpoint = "app/" + appid + "/branding"
      uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri)
	end

	def create(name)
		unless appid.is_a? String
			raise "Non string app name"
		end
		method = "POST"
		endpoint = "app"
      uri = ApiUri::build_uri(endpoint)
		return self.client.request(method, uri, {"name" => name})
	end
end
