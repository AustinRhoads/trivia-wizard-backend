class QuizSerializer < ActiveModel::Serializer
    attributes :id, :current_question, :round_number, :completed, :game_id, :trivia_questions, :status

    def status
      200
    end
    
   def trivia_questions
     custum_trivia_questions = []
     object.trivia_questions.each do |tq|
       custom_tq = tq.attributes
       custum_trivia_questions.push(custom_tq)
 
     end
     custum_trivia_questions
   end
end
