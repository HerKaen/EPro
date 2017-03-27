class Body < ApplicationRecord

has_many :betweens
has_many :successes, through: :betweens

end
