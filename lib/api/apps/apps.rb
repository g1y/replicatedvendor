class Apps
	def initialize(client)
		@client = client
		@ENDPOINT = client.ENDPOINT + "/" + "app"
	end

	def list()
		method = "GET"
		return self.client.request(method, self.ENDPOINT)
	end

	def delete(appid)
		method = "DELETE"
		if not appid.is_a? Integer
			raise "Non integer appid"
		end
		endpoint = self.ENDPOINT + "/" + appid
		return self.client.request(method, endpoint)
	end

	def delete_branding(appid)
		method = "DELETE"
		if not appid.is_a? Integer
			raise "Non integer appid"
		end
		endpoint = self.ENDPOINT + "/" + appid + "/branding"
		return self.client.request(method, endpoint)
	end

	def create(name)
		method = "POST"
		if not appid.is_a? String
			raise "Non string app name"
		end
		return self.client.request(method, self.ENDPOINT, {"name" => name})
	end
end
