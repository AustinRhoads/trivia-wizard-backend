class AddGameToQuizzes < ActiveRecord::Migration[6.1]
  def change
    add_reference :quizzes, :game, null: false, foreign_key: true
  end
end
