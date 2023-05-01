
class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:create]

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      token = encode_token({ user_id: user.id })
      render json: { loggedin: true, user: user.slice(:id, :name, :role, :isactive), jwt: token }, status: :created
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end

  def destroy
     @current_user = nil
    session.delete(:jwt_token)
    render json: { message: 'Logged out successfully' }
  end

  private

  def session_params
    params.permit(:email, :password)
  end
end
