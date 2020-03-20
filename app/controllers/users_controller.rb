class UsersController < ApplicationController
    def index
      users = User.all 
      render json: users.to_json(include: [:characters])
    end
  
    def create 
      user = User.find_or_create_by(userParams)
      render json: user
    end 
  
    
  
    private 
  
    def userParams 
      params.require(:user).permit(:username, :password)
    end
  
  end