#!/usr/bin/ruby


number1 = ARGV[0].to_i

number2 = ARGV[1]

number3 = ARGV[2].to_i

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

elsif ARGV.size <3  
  puts "debes poner alguna operación"

end
