class Api::V1::QuizzesController < ApplicationController

    def create
        #binding.pry
    end

    def quiz_params
        params.permit()
    end



end