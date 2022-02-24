class CreateTriviaQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :trivia_questions do |t|
      t.text :incorrect_answers, array: true, default: []
      t.string :question
      t.string :correct_answer
      t.string :category
      t.string :difficulty
      t.string :question_type

      t.timestamps
    end
  end
end
