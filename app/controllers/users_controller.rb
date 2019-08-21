class UsersController < ApplicationController
  # before_filter :find_model

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:username, :email, :password)
    if @user = User.new(user_params)
      if @user.valid?
        @user.save
        redirect_to new_user_path, succsess: 'Bien'
      # render 'new'

      else
        render 'new'
         end
   end

    # private
    # def find_model
    #     @model = Users.find(params[:id]) if params[:id]
  end
 end
