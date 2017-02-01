#class Movie

#	attr_reader :title
#	attr_writer :title
#	attr_accessor :title #reader & writer in einem!

#	def initialize(title, rank=0)
#		@title = title.capitalize
#		@rank = rank
#	end

	#Getter für einen veränderten rank
#	def normalized_rank
#		@rank * 1000
#	end
	
#	def thumbs_up
#		@rank += 1
#	end

#	def thumbs_down
#		@rank -= 1
#	end
#
#	def to_s
#		"#{@title} has a rank of #{@rank}."
#	end
#end

#movie1 = Movie.new("Goonies", 10)
#movie2 = Movie.new("Batman", 5)
#movie3 = Movie.new("Spiderman", 8)

#movies = [movie1, movie2, movie3]

#	movies.each do |movie|
# 	movie.thumbs_down
#	puts movie
#	end


#movie = Movie.new("Goonies", 10)
#puts movie.title
#movie.title = "GYnniies"
#puts movie.title
#puts movie.normalized_rank

#----------------------------------------------------------------------

#array = (15..20).to_a

#hash ={}
#array.each {|v| hash[v] = rand(100..200)}

#y = 0
#array.each do |key|
#	if y < 6									<---- ALTERNATIVE
#	hash.each do |hash, val|
#	puts "Index: #{hash} - Wert: #{val}" 
#	y = y + 1
#		end
#	end
#end

#----------------------------------------------------------------------

array = (15..20).to_a

hash ={}
array.each {|v| hash[v] = rand(100..200)}

	hash.each do |hash, val|
		if val > 150
	puts "Index: #{hash} - Wert: #{val} WOW"

		if val <= 150 
	puts "Index: #{hash} - Wert: #{val}	"
	end
end