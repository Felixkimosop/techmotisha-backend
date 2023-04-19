class ApplicationController < ActionController::API
    # protect_from_forgery with: :null_session
      before_action :authorize
    
      def encode_token(payload)
        # should store secret in env variable
        JWT.encode(payload, 'my_s3cr3t')
      end
    
      def auth_header
        # { Authorization: 'Bearer <token>' }
        request.headers['Authorization']
      end
    
      def decoded_token
        if auth_header
          token = auth_header.split(' ')[1]
          # header: { 'Authorization': 'Bearer <token>' }
          begin
            JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
          rescue JWT::DecodeError
            nil
          end
        end
      end
    
      def set_current_user
        if decoded_token
          user_id = decoded_token[0]['user_id']
        
    
          if user_id
            @current_user = User.find_by(id: user_id)
            render json: @current_user, include: [:contents,:wishlists,:subscriptions]
         
        end
      end  
          
      
      
      end
      def logged_in?
        !!@current_user 
      end
    
      def logged
        render json: { logged_in: logged_in?, current_user: @current_user }, include: :books
      end
    
     
      
      def authorized_user
        render json: { message: 'Please log in as a user' }, status: :unauthorized unless logged_in? && @current_user.is_a?(User)
      end
    
    
    
      def authorize
        set_current_user 
      
        if logged_in?
          if @current_user.is_a?(User) 
            return true
          end
        end
      
        render json: { message: 'Please log in as a user or an admin' }, status: :unauthorized
      end
      
    end
    
  