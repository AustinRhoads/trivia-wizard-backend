class GameSerializer < ActiveModel::Serializer
  attributes :id, :number_of_rounds, :current_round, :questions_per_round, :join_code, :status
  has_many :quizzes


  def status
    200
  end


  def quizzes

    customized_quizzes = []

    object.quizzes.each do |quiz|
     
      custom_quiz = quiz.attributes
      custom_quiz[:trivia_questions] = quiz.trivia_questions
      
      customized_quizzes.push(custom_quiz)
      #QuizSerializer.new(quiz)

    end

   return customized_quizzes
    
  end


end
