class Like < ApplicationRecord
belongs_to :book

#validates :quality, :numericality => { :less_than_or_equal_to => 5 }

HOW_HEARD_OPTIONS = [ 
	1, 2, 3, 4, 5 
] 

	validates :quality, inclusion: { in: HOW_HEARD_OPTIONS }

end
 