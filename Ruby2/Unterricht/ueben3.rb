str_1 = "Programmieren, Federball, Whisky, Bier"
str_2 = "Fussball, Bier, Programmieren"
str1 = str_1.scan(/\w+/)
str2 = str_2.scan(/\w+/)
str1.size.times do |i|
	if (str2.include? str1[i]) == true
		diff = (str1 - str2) + (str2 - str1)
		"ergebnis = { :diff #{diff}, :match [\"#{str1[i]}\"] }"
		#ergebnis = { :diff => diff, :match => str1[i] }
		puts "ergebnis = #{ergebnis}"
end
end