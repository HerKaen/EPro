class Registration < ApplicationRecord
  belongs_to :event  # Verknüpfung zu event

  HOW_HEARD_OPTIONS = [
  	'Newsletter',
  	'Blockpost',
  	'Twitter',
  	'Other'
  ]

  validates :name, presence: true   # Name muss angegeben werden
  validates :email, format: { with: /(\S+)@(\S+)/ } #Muss in dem Format sein
  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
end
