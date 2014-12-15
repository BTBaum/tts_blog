class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
	end
end


# There are two important things to note about that line:

# by setting an instance variable (@user) on the controller, 
# that variable will magically be available to the view
# params as a hash containing any parameters that came into 
# the controller from the URL (and other places)