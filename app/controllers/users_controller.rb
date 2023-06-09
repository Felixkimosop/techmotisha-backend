class UsersController < ApplicationController
  skip_before_action :authorize, only: [:create, :index, :update]

  def index
    users = User.all
    render json: users, include: [:contents,:wishlists,:subscriptions]
  end

  def create
    
    user = User.create(user_params)

    if user
      SendgridMailer.signupmessage(user).deliver_now
      render json: user, status: :created
    else
      render json: {"error": "cannot be created" }, status: :not_acceptable
    end
  end

  def profile
    render json: @current_user, include: [:contents]
  end

  def edit
    user = User.find_by(id: user_id)

    if user
      user.update(user_params)
      render json: user, status: :ok
    else
      render json: {"error": "Cannot be updated"}
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: [:contents,:wishlists,:subscriptions]
  end

  def update
    user = User.find_by(id: params[:id])
  
    if user
      if user.update(user_params.except(:password))
        render json: user, status: :ok
      else
        render json: {"error": user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {"error": "user not found" }, status: :not_found
    end
  end

def deactivate
  user = User.find_by(id: params[:id])
  if user
    new_status = params[:isactive] == 'false' ? false : true
    user.update(isactive: new_status)
    message = new_status ? "User activated successfully" : "User deactivated successfully"
    render json: { "message": message }, status: :ok
  else
    render json: { "error": "User not found" }, status: :not_found
  end
end

def subscriptions
  user = current_user
  subscriptions = user.subscriptions
  render json: subscriptions
end
  private

  def user_params
    params.permit(:email, :password,:role, :name, :age, :phone_number, :profile_picture,:isactive)
  end
end
