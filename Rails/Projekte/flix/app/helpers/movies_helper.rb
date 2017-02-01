module MoviesHelper

def format_price(movie)
		if (movie < 50000000) ; then
			content_tag(:strong, 'Flop!')
		else
			movie 
		end

	end
end
