class Body < ApplicationRecord

    validates :weigth, :numericality => { :greater_than => 0 }
	validates :weigth, :presence => true

end
