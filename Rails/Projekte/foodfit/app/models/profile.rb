class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :calculator
  belongs_to :food
  belongs_to :fooddiary
  belongs_to :sport
  belongs_to :sportdiary
end
