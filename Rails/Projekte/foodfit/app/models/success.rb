class Success < ApplicationRecord
  has_many :betweens
  has_many :bodies, through: :betweens
end
