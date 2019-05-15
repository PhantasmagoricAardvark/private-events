class ApplicationController < ActionController::Base
	def log_in(user)
		token = SecureRandom.urlsafe_base64
		cookies.permanent[:user_id] = user.id
		current_user=(user)
	end

	def current_user=(user)
		@user = User.find_by(cookies.permanent[:user_id])
	end
end
