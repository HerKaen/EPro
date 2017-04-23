class Food < ApplicationRecord
	has_many :fooddiaries, dependent: :destroy

	validates :menge, :eiweiß, :fett, :kohlenhydrate, :kalorien, :numericality => { :greater_than => 0 }
	validates :name, :menge, :eiweiß, :fett, :kohlenhydrate, :kalorien, :presence => true
	validates :name, uniqueness: true
end
