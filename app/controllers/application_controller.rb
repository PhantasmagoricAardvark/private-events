class ApplicationController < ActionController::Base
	helper_method :current_user, :logged_in?

	def log_in(user)
		token = SecureRandom.urlsafe_base64
		cookies.permanent[:user_id] = user.id
		current_user=(user)
	end

	def current_user=(user)
		@user = User.find(cookies.permanent[:user_id])
	end

	def current_user
		if cookies.permanent[:user_id] != nil
			@current_user ||= User.find(cookies.permanent[:user_id])
		else
			nil
		end
	end

	def signout
		current_user = nil
		cookies.delete(:user_id) 
	end

	def logged_in?
		if current_user == nil
			false
		else
			true
		end
	end
end
