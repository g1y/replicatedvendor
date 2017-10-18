class Channel < ApiModule
	def create_channel(app_id, options)
		method = "POST"
		endpoint = "app/" + app_id + "/channel"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri, options)
	end

	def update_channel(app_id, channel_id, options)
		method = "POST"
		endpoint = "app/" + app_id + "/channel/" + channel_id
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri, options)
	end

	def archive_channel(app_id, channel_id)
		method = "POST"
		endpoint = "app/" + app_id + "/channel/" + channel_id + "/archive"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end

	def update_release(app_id, channel_id, sequence, options)
		method = "POST"
		endpoint = "app/" + app_id + "/channel/" + channel_id + "/release/" + sequence
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri, options)
	end

	def list_releases(app_id, channel_id)
		method = "GET"
		endpoint = "app/" + app_id + "/channel/" + channel_id + "/releases"
		uri = ApiUri::build_uri(endpoint)
		return @client.request_json(method, uri)
	end
end
