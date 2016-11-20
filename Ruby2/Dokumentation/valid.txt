class Autor
	attr_reader :name, :geburtstag
	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end
end

class Bibliothek
	attr_reader :name
	attr_accessor :buecher, :fuenf_jahre, :zwei_jahre, :ok_jahre
	def initialize(name)
		@name = name
		@buecher = []
		@kunden = []
	end

	def add_book(buch)
		@buecher << buch
	end

	def to_s
		puts "**Bücherliste**"
		@buecher.each do |jedes|
			puts "#{jedes.autor[0].name}, #{jedes.titel}, #{jedes.gekauft_am}"
		end
		puts "\n"
	end

	def add_kunde(kunde)
		@kunden << kunde
	end

	def kundenliste
		puts "**Kundenliste**"
		@kunden.each do |kunde|
			puts kunde.name
		end	
		puts "\n"
	end

	def buch_aktion(jahreszahl)
		zwei = jahreszahl - 2
		fuenf = jahreszahl - 5

		@fuenf_jahre = []
		@zwei_jahre = []
		@ok_jahre = []

		@buecher.each do |immer|
			if immer.gekauft_am < fuenf
				@fuenf_jahre << immer
			elsif immer.gekauft_am < zwei
				@zwei_jahre << immer
			else 
				@ok_jahre << immer
			end
		end
		puts "**Zustand der Bücher**"
		if @fuenf_jahre.size > 1
			puts "#{@fuenf_jahre.size} Bücher die in die Restaurierung gehen:"
		elsif @fuenf_jahre.size == 1
			puts "#{@fuenf_jahre.size} Buch das in die Restaurierung geht:"
		else
			puts "Es geht kein Buch in die Restaurierung."
		end
		@fuenf_jahre.each do |go1|
			puts "#{go1.autor[0].name}, #{go1.titel}, #{go1.gekauft_am}"
		end
		puts "\n"

		if @zwei_jahre.size > 1
			puts "#{@zwei_jahre.size} Bücher bei denen eine Kontrolle nötig ist:"
		elsif @zwei_jahre.size == 1
			puts "#{@zwei_jahre.size} Buch bei dem eine Kontrolle nötig ist:"
		else
			puts "Es geht kein Buch in die Restaurierung."
		end
		@zwei_jahre.each do |go2|
			puts "#{go2.autor[0].name}, #{go2.titel}, #{go2.gekauft_am}"
		end
		puts "\n"

		if @ok_jahre.size > 1
			puts "#{@ok_jahre.size} Bücher bei denen keine Aktion nötig ist:"
		elsif @ok_jahre.size == 1
			puts "#{@ok_jahre.size} Buch bei dem keine Aktion nötig ist:"
		else
			puts "Bei keinem Buch ist eine Aktion nötig."
		end
		@ok_jahre.each do |go3|
			puts "#{go3.autor[0].name}, #{go3.titel}, #{go3.gekauft_am}"
		end
		puts "\n"
	end
end

class Buch
	attr_accessor :autor, :titel, :gekauft_am
	def initialize(autor, titel, gekauft_am)
		@autor = []
		@autor << autor
		@gekauft_am = gekauft_am
		@titel = titel
	end
end	

class Kunde
	attr_accessor :name
	def initialize(name)
		@name = name
		@buecher_geliehen = []
	end

	def add_buecher(buch)
		@buecher_geliehen << buch
	end

	def del_buecher(buch_nr)
		puts "Der Kunde #{@name} hat folgendes Buch zurück gebracht: \n#{@buecher_geliehen[buch_nr].titel}"
		puts "\n"
		@buecher_geliehen.delete_at(buch_nr)
	end

	def verliehen
		if @buecher_geliehen.size > 1
			puts "Der Kunde #{@name} hat #{@buecher_geliehen.size} Bücher geliehen:"
		elsif @buecher_geliehen.size == 1
			puts "Der Kunde #{@name} hat #{@buecher_geliehen.size} Buch geliehen:"
		else
			puts "Der Kunde #{@name} hat keine Bücher geliehen."
		end
		@buecher_geliehen.each do |jedes|
			puts "#{jedes.titel}\n"
		end
		puts "\n"
	end
end

#Bibliotheken werden angelegt
bibliothek = Bibliothek.new("Hamburg")

#Autoren werden angelegt
autor_1 = Autor.new("Maier", "20.03.1980")

#Bücher werden angelegt
buch_1 = Buch.new(autor_1, "Niemand", 2005)
buch_2 = Buch.new(autor_1, "Jeder", 2010)
buch_3 = Buch.new(autor_1, "Immer wieder gerne", 2013)
buch_4 = Buch.new(autor_1, "Morgen ist auch noch ein Tag", 2011)

#Kunden werden angelegt
kunde_1 = Kunde.new("Theo")
kunde_2 = Kunde.new("Lea")
kunde_3 = Kunde.new("Jonas")

#Buecherliste
bibliothek.add_book(buch_1)
bibliothek.add_book(buch_2)
bibliothek.add_book(buch_3)
bibliothek.add_book(buch_4)

#kundenliste
bibliothek.add_kunde(kunde_1)
bibliothek.add_kunde(kunde_2)
bibliothek.add_kunde(kunde_3)

bibliothek.to_s
bibliothek.buch_aktion(2014)

#Kundenliste ausgeben
bibliothek.kundenliste

#Kunden leihen Bücher aus
kunde_1.add_buecher(buch_1)
kunde_1.add_buecher(buch_4)
kunde_2.add_buecher(buch_2)
kunde_3.add_buecher(buch_3)

#Verliehene Bücher anzeigen
kunde_1.verliehen
kunde_2.verliehen
kunde_3.verliehen

#Kunde_1(Theo) bringt Buch zurück
kunde_1.del_buecher(0)

#kunde_1 Verliehene Buecher anzeigen
kunde_1.verliehen