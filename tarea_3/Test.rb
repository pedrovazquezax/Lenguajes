load "Binario.rb"
load "Menu.rb"
bin=Binario.new
menu=Menu.new

loop do
  a=menu.DespliegaMenu("\nQue desea hacer\n1.-Complelmento A1\n2.-Complemento A2\n3.-Convertir de binario a decimal\n4.-Salir\nOpcion:" ,4)
  if a == 1
    
  elsif a == 2

  elsif a ==3

  else
    break
  end
end
