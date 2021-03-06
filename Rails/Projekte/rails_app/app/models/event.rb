class Event < ApplicationRecord
	has_many :registrations, dependent: :destroy   #1. Verknüpfung zu registations
	#2. Wenn Event gelöscht wird, werden alle verknüpften Registr. auch gelöscht
	has_many :likes, dependent: :destroy
	has_many :likers, through: :likes, source: :user
	#"likers" ist frei gewählt      	#through => Zwischentabelle
	#source => Tabelle zum verbinden    #1 -> n -> 1

	has_many :categorizations, dependent: :destroy
	has_many :categories, through: :categorizations

	validates :name, :description, :location, presence: true
	validates :description, length: { minimum: 25 }
	validates :price, numericality: { greater_then_or_equal_to: 0 }

	def free?
		price.blank? || price.zero?
	end

end
