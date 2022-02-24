class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.integer :current_question
      t.boolean :completed

      t.timestamps
    end
  end
end
