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

    def join_game

        game = Game.find_by({:join_code => params[:code]})

        #render json: {
        #    status: 200,
        #    message: "you have the endpoint",
        #    code: params[:code],
        #    game: game,
        #    # root: false
        #    #game: @game,
        #    #quizzes: game.quizzes,
        #}

        if game
        
            render :json => game
        else
                render json: {
                    status: 400,
                    error: ["game not found"]
                }
        end
    end


    def game_params
        params.require(:game).permit(:number_of_rounds, :questions_per_round, :players, :join_code, :quiz_rounds)
    end

end