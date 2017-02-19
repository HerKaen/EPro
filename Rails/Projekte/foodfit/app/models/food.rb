class Food < ApplicationRecord
	has_many :fooddiaries, dependent: :destroy
end
