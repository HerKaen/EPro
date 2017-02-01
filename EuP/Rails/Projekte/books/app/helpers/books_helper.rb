module BooksHelper

	def durchschnitt(book)
	
		i=0 
		
		book.likes.each do |f| 
			i=i+f.quality 
		end 
		
		e=i/book.likes.count  

	end

end
