class Api::V1::QuizzesController < ApplicationController

    def create
        game = Game.find(params[:game_id])
        quiz = Quiz.create({game_id: quiz_params[:game_id], round_number: quiz_params[:round_number]})

        quiz_params[:quiz].each do |new_question|

            q = quiz.trivia_questions.build(new_question)
            q.save
        end

     

        if game.number_of_rounds === quiz.round_number

            render json: {
                status: 200,
                recieved_all_quizzes: true
            }
        else
            render json: {
                status: 200,
                recieved_all_quizzes: false       
            }
        end

    end

    def quiz_params
        params.permit(:game_id, :round_number, :quiz => [:category, :question_type, :difficulty, :question, :correct_answer, :incorrect_answers => []] )
    end



end