class Apps
	def initialize(client)
		@client = client
		@ENDPOINT = client.ENDPOINT + "/" + "apps"
	end

	def list()
		method = "GET"
		return self.client.request(method, self.ENDPOINT)
	end

	def delete(appid)
		method = "DELETE"
		if appid.is_a? Integer
			raise "Non integer appid"
		end
		endpoint = self.ENDPOINT + "/" + appid
		return self.client.request(method, endpoint)
	end

	def delete_branding()
		method = "DELETE"
		return self.client.request(method, self.ENDPOINT)
	end

	def create()
		method = "POST"
		return self.client.request(method, self.ENDPOINT)
	end
end
