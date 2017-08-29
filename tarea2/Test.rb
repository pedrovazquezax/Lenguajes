load "Cripto.rb"
cripto=Cripto.new
print "Dame el desplazamiento "
desp= gets.to_i
print "Dame la cadena a encriptar "
print"#{cripto.encriptar(cripto.str_to_array(gets.chomp),desp).join("")}\n"
print "Dame la cadena a desencriptar "
print"#{cripto.desencriptar(cripto.str_to_array(gets.chomp),desp).join("")}\n"
