class Menu
  def DespliegaMenu(texto,max)
    loop do
      print texto
      o = gets.chomp.to_i
      if (o < 1 || o > max )
        print "\nOpcion no valida\n"
      else
        return o
      end
    end
  end
end
