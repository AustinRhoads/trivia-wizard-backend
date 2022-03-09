class Game < ApplicationRecord
    has_many :quizzes, dependent: :delete_all

    validates_uniqueness_of :join_code
end
