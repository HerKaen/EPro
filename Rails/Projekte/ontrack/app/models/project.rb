class Project < ApplicationRecord
has_many :iterations

validates :title, presence: true
end
