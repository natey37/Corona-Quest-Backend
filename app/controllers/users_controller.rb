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

    
    def show 
        user = User.find(params[:id])

        if user.characters == 0 
          render json: {errors: "You have no Characters"}
        else 
          render json: user.characters
      end 
    end 
   
  
    
  
    private 
  
    def user_params 
      params.require(:user).permit(:username, :password)
    end
  
  end