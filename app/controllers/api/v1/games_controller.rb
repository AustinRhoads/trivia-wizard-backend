class Api::V1::GamesController < ApplicationController

    def index

    end

    def create
        
        
        @game = Game.new(game_params)
        #binding.pry


        if @game.save
            render json: {
                game: @game,
                status: 200,
            }
        else
            render json: {
                status: 500,
                errors: ['not good']
            }
        end
    end


    def game_params
        params.require(:game).permit(:number_of_rounds, :questions_per_round, :players, :join_code, :quiz_rounds)
    end

end