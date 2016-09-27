
#Variable zuweisen:
#comment = "Heute ist Dienstag"

#Variable 3x ausgeben und GROß schreiben:
#3.times do 
#	puts comment.upcase 
#end

# --------------------------------------------------

#movie = "Goonies"

#puts "Mickey\'s favorite movie is \n" + movie

#rank = 10

#puts "#{movie} has a rank of #{rank * 2} am #{Time.now}"

# --------------------------------------------------

#def movie_listing(movie, rank)
#	"Movie: #{movie} ist ein guter Film, mit der Punktzahl: #{rank} am #{set_time}"
#end

#def set_time
#	Time.now.strftime("%d.%m.%Y")
#end

#puts movie_listing(ARGV[0], 10) #Erster Wert wird bei Abfrage eingegeben (ruby start.rb Superman)

# ---------------------------------------------------

class Movie
	def initialize(pname, prank=5)
		@name = pname
		@rank = prank
	end

	def list_movie
		"Movie heißt: #{@name} und hat den Rank #{@rank}."
	end

	def thumbs_up(value)
		@rank = @rank + value
	end


end

var = Movie.new("Superman")
#puts var.list_movie 
var.thumbs_up(7)
puts var.list_movie

var2 = Movie.new("Batman", 10)
puts var2.list_movie