class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.integer :current_question
      t.integer :round_number
      t.boolean :completed

      t.timestamps
    end
  end
end
