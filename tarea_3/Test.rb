load "Binario.rb"
load "Menu.rb"
bin=Binario.new
menu=Menu.new

loop do
  a=menu.DespliegaMenu("\nQue desea hacer\n1.-Complelmento A1\n2.-Complemento A2\n3.-Convertir de binario a decimal\n4.-Salir\nOpcion:" ,4)
  if a == 1
    print("#{bin.complementA1(gets.chomp).join("")}\n")
  elsif a == 2

  elsif a ==3
    print("#{bin.binToDec(gets.chomp)}\n")

  else
    break
  end
end


#print("complelento\n")
#print("#{complementA1(gets.chomp).join("")}\n")
print("#{binToDec(gets.chomp)}\n")
