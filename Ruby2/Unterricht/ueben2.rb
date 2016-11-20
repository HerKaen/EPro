array = (15..20).to_a

hash ={}
array.each {|v| hash[v] = rand(100..200)}

	hash.each do |hash, val|
		if val > 150
	puts "Index: #{hash} - Wert: #{val} WOW"
end

		if val <= 150 
	puts "Index: #{hash} - Wert: #{val}	"
	end
end

	array2 = Array.new
	array.each do |val|
	array2 << val * val
	end

	puts array2

	hash2 = Hash.new
 	array.each do |z|
 	hash2[z] = z * z
 	end

	puts hash2