class ApplicationController < ActionController::API
	def encode_token(payload)
	  JWT.encode(payload, 'my_secret')
	end

	def auth_header
	  request.headers['Authentication']
	end

	def decoded_token(token)
		if auth_header
			token = auth_header.split(' ')[1]
			begin
				JWT.decode(token, 'my_secret', true, algorithm: 'HS256')
			rescue JWT::DecodeError
				nil
			end
		end
	end

	def current_user
	  if decoded_token
	  	artist_id = decoded_token[0]['id']
			@artist = Artist.find_by(id: artist_id)
	  end
	end

	def logged_in?
	  !!current_user
	end
end
