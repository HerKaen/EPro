#player1 = "larry"
#player2 = "curly"
#player3 = "moe"

#allenamen = <<HEREDOC
#Players:
	#{player1}
	#{player2}
	#{player3}
#HEREDOC
#puts allenamen

#---------------------------------------------------------------

class Kunde
	attr_accessor :name, :gehalt, :kredit
	attr_writer :adresse

	def initialize(name)
		@name = capitalize_name(name)
	end

	def capitalize_name(str)
		str_array = str.split
		ret = ""
		str_array.each do |teilstring|
		ret = ret + " " + teilstring.capitalize
		end
	ret.strip
	end

	def adresse
		"#{@name}, #{@adresse}"
	end
end

class Kredit

	def initialize(kunde)
		@kunde = kunde
	end

	def kunde
		"#{@kunde.adresse}. Jahresgehalt: #{@kunde.gehalt * 12}"
	end

	
end

	kunde1 = Kunde.new("Theo Sommer")
	kunde1.name = "theo sonnenschein"
	kunde1.gehalt = 2000
	kunde1.adresse = "Hermelinweg 11, 22159 Hamburg"

	#puts kunde1.adresse

	kredit1 = Kredit.new(kunde1) #Damit erhält die Klasse Kredit die Objekte/Eigenschaften von Klasse Kunde

	puts kunde1.name