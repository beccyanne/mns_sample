require_relative '../user'
require 'httparty'

class UserAdapter
	include HTTParty

	def create_user(options)
		response = HTTParty.post(api.mns.url, options)
		@response_code = response.code		
	end

	def get_user(user_id)
		responses = []
		response = HTTParty.get(api.mns.url, { query: { userId: user_id } })
		@response_code = response.code
		if JSON.parse(response.body).empty?
			responses.push(User.new())
		else
			JSON.parse(response.body).each do |response| 
				responses.push(User.new(response))
			end
		end
		responses
	end

	def last_response_code
		@response_code
	end
end