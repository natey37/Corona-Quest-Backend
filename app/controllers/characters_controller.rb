class CharactersController < ApplicationController
    def index
      characters = Character.all 
      render json: characters
    end

    def create 
        character = Character.create(characterParams)
        render json: character
    end 

    def show 
        character = Character.find(params[:id])
        render json: character
    end 
  
    
    private 
  
    def characterParams 
      params.require(:character).permit(:name, :strength, :hp, :score, :user_id, :username)
    end
  
  end