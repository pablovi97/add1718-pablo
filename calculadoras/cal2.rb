#!/usr/bin/ruby

fichero = ARGV[0]

opera = `cat #{fichero}`

lines = opera.split("\n")

lines.each do |line|
  cut = line.split
	number1 = cut[0].to_i
	number2 = cut[1]
	number3 = cut[2].to_i
	
if number2 == "+"
  suma = number1 + number3
	puts suma
	
elsif number2 == "-"
  resta = number1 - number3
	puts resta
	
elsif number2 == "x"
  prod = number1 * number3
	puts prod
	
elsif number2 == "/"
  div = number1 / number3
	puts div

else   
  puts "debes poner alguna operación"

end
	  
end
