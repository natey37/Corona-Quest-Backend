require 'jwt'
class UsersController < ApplicationController
    def index
      users = User.all 
      render json: users.to_json(include: [:characters])
    end
  
    # def create 
    #   user = User.find_or_create_by(userParams)
    #   render json: user
    # end 



        

    def create
        user = User.new(user_params)
      
        if user.save
          render json: {status: 'User created successfully', user_id: user.id, user: user}, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end

    # def login
    #     user = User.find_by(username: user_params[:username])

    #     # user = User.find_or_create_by(user_params[:username])
      
    #     if user && user.authenticate(user_params[:password])
    #         auth_token = JsonWebToken.encode({user_id: user.id})
    #         render json: {auth_token: auth_token}, status: :ok
    #     else
    #       render json: {error: 'Invalid username / password'}, status: :unauthorized
    #     end
    #   end
  
    
  
    private 
  
    def user_params 
      params.require(:user).permit(:username, :password)
    end
  
  end