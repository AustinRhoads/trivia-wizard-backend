class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :number_of_rounds, :default => 1
      t.integer :current_round, :default => 1
      t.integer :questions_per_round, :default => 10
      t.string :join_code
      t.integer :number_of_players, :default => 2

      t.timestamps
    end
  end
end
