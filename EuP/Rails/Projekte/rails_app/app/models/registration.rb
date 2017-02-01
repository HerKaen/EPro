class Registration < ApplicationRecord
  belongs_to :event  # Verknüpfung zu event
  belongs_to :user


  HOW_HEARD_OPTIONS = [
  	'Newsletter',
  	'Blockpost',
  	'Twitter',
  	'Other'
  ]

  
  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
end
