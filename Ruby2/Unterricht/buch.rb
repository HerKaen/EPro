class Bibliothek

	attr_reader :name
	attr_accessor :buecher
	
	def initialize(name)
		@name = name
		@buecher = []
	end

	def add_bock(bock)
		@buecher << bock
	end

	def ausgabe
		@buecher.each do |buch|
			puts "#{buch.autor.name}, #{buch.title}, #{buch.gekauft_am} "
		end
	end

		def buch_aktion(jahreszahl)
			puts "Die Ausgabe der Methode lautet dann:"
			@buecher.each do |buch|

				if jahreszahl - buch.gekauft_am < 2 
					puts "Buch bei denen keine Aktion nötig ist:"
					puts "#{buch.autor.name}, #{buch.title}, #{buch.gekauft_am}"
				elsif jahreszahl - buch.gekauft_am <  5 
					puts "Bücher bei denen eine Kontrolle nötig ist:"
					puts "#{buch.autor.name}, #{buch.title}, #{buch.gekauft_am}"

				else 
					puts "Buch das in die Restaurierung geht"
					puts "#{buch.autor.name}, #{buch.title}, #{buch.gekauft_am}"
				end
			end
		end
end

class Buch

	attr_accessor :autor, :gekauft_am, :title

	def initialize(title, gekauft_am, autor)
		@title = title
		@gekauft_am = gekauft_am
		@autor = autor
	end
end

class Autor

	attr_reader :name, :geburstag

	def initialize(name, geburstag)
		@name = name
		@geburstag = geburstag
	end
end

class Bücherverleih

	#attr_accessor :ausleiher

	#def initialize(ausleiher="")
	#	@ausleiher = ausleiher
	#end

	#def ausleih_buch(buch)
	#	ausleihe = { 'buch' => '@ausleiher'}
	#end

	def out
		vals = {'Hendrik' => "Niemand", 'Herr Dr. Bogner' => "Jeder"}

		vals.each do |key, val|
			puts "#{key} hat folgendes Buch ausgeliehen: #{val}"
		end


	end

end


bibliothek = Bibliothek.new("Hamburg")


autor_1 = Autor.new("Maier", "20.3.1980")

buch_1 = Buch.new("Niemand", 2005, autor_1)
buch_2 = Buch.new("Jeder", 2010, autor_1)
buch_3 = Buch.new("Immer wieder gerne", 2013, autor_1)
buch_4 = Buch.new("Morgen ist auch noch ein Tag", 2011, autor_1)
  
bilothek = Bibliothek.new("")
bilothek.add_bock(buch_1)
bilothek.add_bock(buch_2)
bilothek.add_bock(buch_3)
bilothek.add_bock(buch_4)
bilothek.ausgabe
bilothek.buch_aktion(2014)

obj = Bücherverleih.new("")
obj.out