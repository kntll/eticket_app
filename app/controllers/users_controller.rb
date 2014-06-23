class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

	def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the e-ticket App! 
      									<br></br>Do you want to Sale or Buy a ticket?"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end