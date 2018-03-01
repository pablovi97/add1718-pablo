#!/usr/bin/ruby

archivo = ARGV[0]
contenido = `cat #{archivo}`
lineas = contenido.split("\n")

lineas.each do |linea|
user = linea.split("\n")
     if system("id #{user[0]} &> /dev/null") == true
	       system("userdel -rf #{user[0]} &> /dev/null")
	         puts("El usuario #{user[0]} ha sido borrado.")
      elsif system("id #{user[0]} &> /dev/null") == false
	        puts("El usuario #{user[0]} no existe.")
         
      end
 end 
 


