#1. Erstellen Sie eine Klasse Car mit den Eigenschaften: 
	#ps, typ, verbrauch
	#Stellen Sie sicher, dass die Eigenschaft typ beim 
	#ersten Buchstaben einen Großbuchstaben erstellt.
	#Stellen Sie sicher, dass bei der Eingabe überprüft wird, ob es sich um 
	#einen String handelt, der mindestens 3 Ziffern lang ist
	#Stellen Sie sicher, dass die Instanzvariable ps nur dann gefüllt wird, 
	#wenn es sich um einen positiven Wert größer als Null handelt
#2. Das Fahrzeug kann beschleunigen. Die Methode beschleunigen bekommt einen Parameter zeit, 
	#der die Sekundenzahl des Beschleunigungsvorgangs enthält. Ausgegeben wird die erreichte 
	#Geschwindigkeit in km/Stunde. Die Geschwindigkeit wird errechnet aus 
	#PS mal Sekunden geteilt durch 100 und ergibt die Einheit Meter/Sekunden.
#3. Erstellen Sie einen Konstruktor, der für die Eigenschaft ps einen Wert erwartet, 
	#für die Eigenschaft typ optional eine Initialisierung ermöglicht.
#4. Legen Sie 3 Objekte von dieser Klasse an: Objekt1: ps: 200 typ: 'Klaumich',
	#Objekt2: ps:80 typ: 'Hauni' ,Objekt3: ps: 100.
#5. Speichern Sie die Objekte in einem Array und lassen Sie das Array durchlaufen 
	#und geben Sie den Typ aus.
#6. Legen Sie drei weitere Objekte von der Klasse Car an. Die Daten stehen in einem Hash, 
	#wobei die erste Position den Typ und die zweite Position die PS 
	#enthält: vals = { 'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}. 
	#Lassen Sie den Hash durchlaufen, erzeugen jeweils ein Car-Objekt und legen dieses 
	#im Array cars2 ab.
#7. Erstellen Sie eine Klasse 'Driver' mit der Eigenschaft 'name', die im Konstruktor 
	#gesetzt werden muss. Es gibt ein Array cars, das im Konstruktor initialisiert wird. 
	#Es gibt eine Methode add_cars mit der für das Driver-Objekt ein Fahrzeug hinzugefügt 
	#werden kann. Es gibt eine Ausgabe show_cars die die Fahrzeuge mit der Typbezeichnung 
	#auflistet. Legen Sie ein Objekt Theo an, ordnen Sie von den Car-Arrays jeweils das 
	#erste dem Driver-objekt zu. Lassen Sie die Daten der zugeordneten Fahrzeuge ausgeben.

class Driver

	attr_accessor :name

	def initialize(name)
		@name = name
		@cars = []
	end

	def add_cars(car)
		@cars << car
	end

	def show_cars
		@cars.each do |car|
			puts car.typ
		end
	end
end

class Car
	attr_accessor :verbrauch
	attr_reader :ps, :typ
	
	def initialize(ps, typ="")
		@typ = typ.capitalize
		@ps = ps 
	end

	def ps=(ps)
		@ps = ps if ps > 0
	end

	def typ=(typ)
		if !typ.is_a?(String)
				puts "War kein String!"

		elsif typ.size < 3
		 		puts "String ist zu kurz!"
		else 
			@typ = typ#.capitalize 
		end
	end

	def beschleunigen(zeit)
		geschwindigkeit = zeit * @ps / 100
	end

	def convert(var)
		var * 3.6
	end
end


car1 = Car.new(200, "Typ A")
car2 = Car.new(400, "Typ B")
car3 = Car.new(600, "Typ C")

cars = [car1, car2, car3]

vals = { 'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}

cars2 = Array.new

vals.each do |val|
	cars2 << Car.new(ps, typ)
end

#cars.each do |val|
#	puts "#{val.typ}"
#end

theo = Driver.new("Theo")
theo.add_cars(cars[0])
theo.add_cars(cars[2])
theo.show_cars