

def BuscaChar(dato)
alf=["A","B","C","D","E","F","G","H","I","J","K","L"]
alf+=["M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    i=0
    until i==alf.length
      if dato==alf[i]
         return i
        else
          i+=1
       end
    end
end

def validar(dato)

  if dato>26
    dato=dato-26
  end
  return dato
end


def encriptar(cad,desp)
  alf=["A","B","C","D","E","F","G","H","I","J","K","L"]
  alf+=["M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

  i=0
  until i==(cad.length)
    cad[i]=alf[validar(desp+BuscaChar(cad[i]))]
    i+=1
    if i<cad.length
      cad[i]=alf[BuscaChar(cad[i])-desp]
      i+=1
    end

  end
  return cad
end


def desencriptar(cad,desp)
  alf=["A","B","C","D","E","F","G","H","I","J","K","L"]
  alf+=["M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  i=0
  until i==(cad.length)
    cad[i]=alf[BuscaChar(cad[i])-desp]
    i+=1
    if i<cad.length
      cad[i]=alf[validar(BuscaChar(cad[i])+desp)]
      i+=1
    end

  end
  return cad
end

def str_to_array(str)
  str=str.upcase
  str=str.gsub(" ",)
  cad=[]
  cad=str.split("")
  return cad
end


print "Dame el desplazamiento "
desp= gets.to_i
print "Dame la cadena a encriptar "
print"#{encriptar(str_to_array(gets.chomp),desp).join("")}\n"
print "Dame la cadena a desencriptar "
print"#{desencriptar(str_to_array(gets.chomp),desp).join("")}\n"
