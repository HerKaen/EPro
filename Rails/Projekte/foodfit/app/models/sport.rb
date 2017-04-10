class Sport < ApplicationRecord
	has_many :sportdiaries, dependent: :destroy

	validates :kalorien, :numericality => { :greater_than => 0 }
	validates :name, :kalorien, :presence => true
end
