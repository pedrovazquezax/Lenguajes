
def complementA1(cadena)

  noAConvertir = []
  noAConvertir = strToArray(cadena)


  i=0
  until i==(noAConvertir.length)

    if "0"==noAConvertir[i]
      noAConvertir[i] = 1
      i+=1
    else
      noAConvertir[i]= 0
      i+=1
    end

  end
  return noAConvertir
end

def binToDec(cadena)

  noADec= []

  noADec = strToArray(cadena)

  print(noADec)

  i=0
  result = 0
  
    until i==(noADec.length)
      if "1" == noADec[i]
        print("\n#{i}\n")
        result += Math.ldexp(1,i).to_i
        i+=1
      end
      i+=1

    end

  return result

end


def strToArray(str)
  str=str.gsub(" ","")
  cad=[]
  cad=str.split("")
  return cad
end


#print("complelento\n")
#print("#{complementA1(gets.chomp).join("")}\n")
print ("bin to dec\n")
print("#{binToDec(gets.chomp)}\n")
