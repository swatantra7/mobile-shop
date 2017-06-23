class UsersController < ApplicationController

  def new
    @user = User.new
    @user.build_people
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      people_attributes: [:first_name, :last_name]
    )
  end

end
