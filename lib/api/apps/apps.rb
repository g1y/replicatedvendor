class Apps < ApiModule
	def initialize(client)
		super(client)
	end

	def list()
		method = "GET"
		return self.client.request(method, "app")
	end

	def delete(appid)
		method = "DELETE"
		unless appid.is_a? Integer
			raise "Non integer appid"
		end
		endpoint = "app/" + appid
		return self.client.request(method, endpoint)
	end

	def delete_branding(appid)
		method = "DELETE"
		unless appid.is_a? Integer
			raise "Non integer appid"
		end
		endpoint = "app/" + appid + "/branding"
		return self.client.request(method, endpoint)
	end

	def create(name)
		method = "POST"
		unless appid.is_a? String
			raise "Non string app name"
		end
		return self.client.request(method, "app", {"name" => name})
	end
end
