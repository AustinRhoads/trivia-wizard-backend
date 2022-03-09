class Quiz < ApplicationRecord
    belongs_to :game
    has_many :trivia_questions, dependent: :delete_all
end
