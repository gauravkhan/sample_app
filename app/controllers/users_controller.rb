class UsersController < ApplicationController
 	def show
		@user = User.find(params[:id])
	end

  def new
	@user = User.new
  	@title = "Sign up"
  end
def create
@user = User.new(params[:user])
if @user.save
flash[:success] = "Welcome to the My G**GIT app!"
redirect_to @user
# Handle a successful save.
else
@title = "Sign up"
render 'new'
end
end

end
