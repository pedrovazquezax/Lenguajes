class Binario

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
    i=0
    j=(noADec.length-1)
    result = 0

      until i==(noADec.length)

        if noADec[i] ==  "1"
          result += Math.ldexp(1,j).to_i
          i+=1
          j-=1
        else
        i+=1
        j-=1
        end

      end

    return result

  end


  def strToArray(str)
    str=str.gsub(" ","")
    cad=[]
    cad=str.split("")
    return cad
  end
end
