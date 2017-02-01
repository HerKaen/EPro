
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

#class Movie
#	def initialize(pname, prank=5)
#		@name = pname
#		@rank = prank
#	end

#	def list_movie
#		"Movie heißt: #{@name} und hat den Rank #{@rank}."
#	end

#	def thumbs_up(value)
#		@rank = @rank + value
#	end


#end

#var = Movie.new("Superman")
#puts var.list_movie 
#var.thumbs_up(7)
#puts var.list_movie

#var2 = Movie.new("Batman", 10)
#puts var2.list_movie

#---------------------------------------------------------------------

#class Customer
		#1 #def set_name(name)
		#1 #	@name = name
		#1 #end

		#2 #def name=(name)
		#2 #	@name = name
		#2 #end

#		attr_writer :name   #3

#		def ausgabe
#			@name
#		end
#	end

#	obj = Customer.new
	#1 #obj.set_name("Theo")

#	obj.name = "Theo"   #2 + 3
#	puts obj.ausgabe

#-----------------------------------------------------------------------

class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def play
		puts "#{@name} Playlist:"
		@movies.each do |movie|
			puts movie
	end
end
end

class Movie

	attr_accessor :title #reader & writer in einem!

	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
	end

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@title} has a rank of #{@rank}."
	end
end

movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Batman", 5)
movie3 = Movie.new("Spiderman", 8)


playlist1 = Playlist.new("Theo")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.play