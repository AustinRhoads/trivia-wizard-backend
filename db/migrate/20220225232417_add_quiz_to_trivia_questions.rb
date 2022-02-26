class AddQuizToTriviaQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :trivia_questions, :quiz, null: false, foreign_key: true
  end
end
