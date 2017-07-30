module SessionsHelper

	# logs in user
	def log_in(user)
		session[:user_id] = user.id
	end

#returns current logged-in user if any
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

# returns true if user is logged in, false otherside
	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
	
end
