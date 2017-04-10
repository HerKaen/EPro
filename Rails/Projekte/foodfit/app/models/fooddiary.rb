class Fooddiary < ApplicationRecord
  belongs_to :food

    validates :anzahl, :numericality => { :greater_than => 0 }
	validates :anzahl, :presence => true
end
