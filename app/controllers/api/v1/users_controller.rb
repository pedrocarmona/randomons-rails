class Api::V1::UsersController < Api::BaseController
  def index
    @users = User.order('name ASC')
    respond_with(@user)
  end

  def show
    @user = User.find(params[:id])
    respond_with(@user)
  end
end
