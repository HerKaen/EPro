
class Autor

	attr_reader :name, :geburtstag

	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end
end

class Buchhandlung

	attr_reader :name
	attr_accessor :buecher

	def initialize(name)
		@name = name
		@buecher = []
	end

	def add_book(buch)
		@buecher << buch
	end

	def to_s
		@buecher.each do |alle|
			puts "#{alle.autor}, #{alle.title}, Einkaufspreis: #{alle.preis}, Verkaufspreis: #{alle.preis}, Mwst: #{alle.preis}"
		end
	end

#	def verkauf

		#puts "DateTime::now: /n"
#	end

#	def verkauf_monat
#		var3 = 3 * ("#{buch_1.preis}" / 100 * 7)
#		var4 = 2 * ("#{buch_2.preis}" / 100 * 7)
#		var5 = 3 * ("#{buch_3.preis}" / 100 * 7)
#		var6 = 2 * ("#{buch_4.preis}" / 100 * 7)

#		var11 = var3 + var4 + var5 + var6

#		var7 = 3 * ("#{buch_1.preis}" / 100 * 30)
#		var8 = 2 * ("#{buch_2.preis}" / 100 * 30)
#		var9 = 3 * ("#{buch_3.preis}" / 100 * 30)
#		var10 = 2 * ("#{buch_4.preis}" / 100 * 30)

#		var12 = var7 + var8 + var9 + var10

#		puts "Time.now: /n"
# 		puts "Mwst: #{var11} /n"
		#puts "Gewinn: #{var12} /n"
#	end
end


class Buch

	attr_accessor :preis, :title, :autor

	def initialize(preis, title, autor)
		@autor  = []
		@autor << autor	
		@preis = preis
		@title = title
		end

	def verkaufspreis
		@preis / 100
	end

	def mwst(var2)
		var2 / 100 * 2
	end
end



buchhandlung = Buchhandlung.new("Thalia Hamburg")

autor_1 = Autor.new("Maier", "20.3.1980")

buch_1 = Buch.new(autor_1, "Niemand", 20)
buch_2 = Buch.new(autor_1, "Jeder", 25)
buch_3 = Buch.new(autor_1, "Immer wieder gerne", 27)
buch_4 = Buch.new(autor_1, "Morgen ist auch noch ein tag", 17)

buchhandlung2 = Buch.new("")
buchhandlung2.add_book(buch_1)
buchhandlung2.add_book(buch_2)
buchhandlung2.add_book(buch_3)
buchhandlung2.add_book(buch_4)

buchhandlung2.to_s
buchhandlung2.verkaufspreis



