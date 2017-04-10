class Body < ApplicationRecord

has_many :betweens
has_many :successes, through: :betweens

    validates :weigth, :numericality => { :greater_than => 0 }
	validates :weigth, :presence => true

end
