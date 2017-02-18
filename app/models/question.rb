class Question < ApplicationRecord
	has_many :question_sets
	has_many :users, through: :question_sets				

end
