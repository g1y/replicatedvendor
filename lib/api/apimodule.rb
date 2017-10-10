class ApiModule
	def initialize(client = nil)
		@client = client
	end
end

Dir[File.dirname(__FILE__) + '/**/*.rb'].each {|file| require file }
