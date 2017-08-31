load "Cripto.rb"
load "Menu.rb"
cripto=Cripto.new
menu=Menu.new
print "Dame el desplazamiento "
desp= gets.to_i
loop do
  a=menu.DespliegaMenu("\nQue desea hacer\n1.-Encriptar\n2.-Desencriptar\n3.-Salir\nOpcion:" ,3)
  if a == 1
    print "Dame la cadena a encriptar "
    print"#{cripto.encriptar(cripto.str_to_array(gets.chomp),desp).join("")}\n"
  elsif a == 2
    print "Dame la cadena a desencriptar "
    print"#{cripto.desencriptar(cripto.str_to_array(gets.chomp),desp).join("")}\n"
  else
    break
  end
end
