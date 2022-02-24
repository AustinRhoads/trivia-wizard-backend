class Game < ApplicationRecord
    has_many :quizzes

    validates_uniqueness_of :join_code
end
