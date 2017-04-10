class User < ApplicationRecord
  has_secure_password

  has_many :successes

    validates :age, :start_weight, :dream_weight, :height, :numericality => { :greater_than => 0 }
	validates :name, :email, :password_digest, :age, :start_weight, :dream_weight, :height, :presence => true
	validates :email, uniqueness: true
end
