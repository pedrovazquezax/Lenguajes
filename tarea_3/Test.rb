load "Binario.rb"
load "Menu.rb"
bin=Binario.new
menu=Menu.new

loop do
  a=menu.DespliegaMenu("\nQue desea hacer\n1.-Complelmento A1\n2.-Complemento A2\n3.-Convertir de binario a entero\n4.-Convertir de Entero a binario\n5.-Salir\nOpcion:" ,5)
  if a == 1
          b=menu.DespliegaMenu("A que tipo de dato desea aplicar el complemento A1\n1.-Binario\n2.-Decimal\nOpcion: ",2)
          if (b==1)
            print("Dame el numero Binario para aplicar complemento A1: ")
            print("El numero resultante es: #{bin.complementA1(gets.chomp).join("")}")
          else
            print("Dame el numero Entero para aplicar complemento A1: ")
            print("El numero resultante es: #{bin.complementA1(bin.decToBin(gets.to_i)).join("")}")
          end
  elsif a == 2
            b=menu.DespliegaMenu("A que tipo de dato desea aplicar el complemento A2\n1.-Binario\n2.-Decimal\nOpcion: ",2)
            if (b==1)
              print("Dame el numero Binario para aplicar complemento A2: ")
              print("El numero resultante es: #{bin.complementA2(gets.chomp).join("")}")
            else
              print("Dame el numero Entero para aplicar complemento A2: ")
              print("El numero resultante es: #{bin.complementA2(bin.decToBin(gets.to_i)).join("")}")
            end
  elsif a ==3
    print("Dame el numero Binario para convertir a decimal: ")
    print("El numero en decimal es: #{bin.binToDec(gets.chomp)}")

  elsif a==4
    print("Dame el numero Deciman para convertir a binario: ")
    print("El numero en decimal es: #{bin.decToBin(gets.to_i)}")

  else
    break
  end
end
