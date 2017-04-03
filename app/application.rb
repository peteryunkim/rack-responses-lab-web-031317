class Application

	def call(env)
		resp = Rack::Response.new
		
		# time = Time.new

		# resp.write "#{time}"

		if Time.now.hour < 12
			resp.write "Good Morning!"
		else Time.now.hour >= 12
			resp.write "Good Afternoon!"
		end

		resp.finish
	end


end
