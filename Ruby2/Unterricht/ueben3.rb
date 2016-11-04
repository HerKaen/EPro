Person1 = {"Vorname" => "Theo", "Nachname" => "Sommer", "Stadt" => "Lodz"}
Person2 = {"Vorname" => "Stevie", "Nachname" => "K", "Stadt" => "Kraselhausen"}
Person3 = {"Vorname" => "Garry", "Nachname" => "Ewert", "Stadt" => "Schwuchtelstadt"}

Adresse = Array.new
Person1.each do |val|
Adresse << val
end

Person2.each do |val2|
Adresse << val2
end

Person3.each do |val3|
Adresse << val3
end

puts "1.Person:"
Adresse[0..2].each do |key, val|
puts "#{key}: #{val}"
end 

puts "2.Person:"
Adresse[3..5].each do |key, val|
puts "#{key}: #{val}"
end

puts "3.Person:"
Adresse[6..8].each do |key, val|
puts "#{key}: #{val}"
end


