class Sport < ApplicationRecord
	has_many :sportdiaries, dependent: :destroy
end
