class LoginController < ApplicationController
	def index
		redirect_to :login_form
	end
end
