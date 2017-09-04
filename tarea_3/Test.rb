load "Binario.rb"
load "Menu.rb"
bin=Binario.new
menu=Menu.new

loop do
  a=menu.DespliegaMenu("\nQue desea hacer\n1.-Complelmento A1\n2.-Complemento A2\n3.-Convertir de binario a decimal\n4.-Salir\nOpcion:" ,4)
  if a == 1
    print("Dame el numero Binario para aplicar complemento A1: ")
    print("El numero resultante es: #{bin.complementA1(gets.chomp).join("")}")
  elsif a == 2

  elsif a ==3
    print("Dame el numero Binario para convertir a Deciman: ")
    print("El numero en decimal es: #{bin.binToDec(gets.chomp)}")


  else
    break
  end
end
