Dir[File.dirname(__FILE__) + '/**/*.rb'].each {|file| require file }

class ApiModule
	def initialize(client = nil)
		@client = client
	end
end
