#!/usr/bin/ruby

filename = ARGV[0]
cont = cat #{filename}
lista = cont.split("\n")

if ARGV[0] != 1
     lista.each do |x|
        if system("id #{x}") == true
            system("sudo userdel -r #{x}")
        else
            puts "Error¡¡"
        end
    end
else
    puts "Error no hay argumentos"
end
