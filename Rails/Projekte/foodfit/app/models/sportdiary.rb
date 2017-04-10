class Sportdiary < ApplicationRecord
  belongs_to :sport

  	validates :anzahl, :numericality => { :greater_than => 0 }
	validates :anzahl, :presence => true
end
