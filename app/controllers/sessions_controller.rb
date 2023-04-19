class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:create]
  
    def create
      user = User.find_by(email: params[:email])
     
  
      if user && user.authenticate(params[:password])
        token = encode_token({ user_id: user.id })
        render json: { loggedin: true, user: user.as_json(only: [:id, :name, :role]), jwt: token }, status: :accepted
           else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    def destroy
      cookies.delete(:jwt_token)
      render json: { message: 'Logged out successfully' }
    end
  
    private
  
    def session_params
      params.permit(:email, :password)
    end
  end
  