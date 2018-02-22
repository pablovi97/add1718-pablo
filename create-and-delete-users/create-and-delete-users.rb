#!/usr/bin/ruby

if ARGV.size !=1
  puts "te faltan argumentos"
  exit
end  


archivo = ARGV[0]
contenido = `cat #{archivo}`
lineas = contenido.split("\n")


if `id -u` == "0\n" 
  lineas.each do |line|
    user = line.split(":")
      if user[2] == ""
	    puts "El usuario #{user[0]} no tiene email"
      else
	    puts "El usuario #{user[0]} tiene email"
      end
  
      if user[4] == "add"
        if system("id #{user[0]} 2> /dev/null 1> /dev/null") == true
	      puts("El usuario #{user[0]} ya existe.")
        else
          system("useradd -m #{user[0]} 2> /dev/null 1> /dev/null" )
            puts("El usuario #{user[0]} ha sido creado.")
        end
      else  
        if user[4] == "del"
          if system("id #{user[0]} 2> /dev/null 1> /dev/null") == true
	        system("userdel -r #{user[0]} 2> /dev/null 1> /dev/null")
	          puts("El usuario #{user[0]} ha sido borrado.")
          else
	        puts("El usuario #{user[0]} no existe.")
          end
        end
       end
      end
else
  puts "No eres root"
end
