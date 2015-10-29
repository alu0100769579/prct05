class NumFraccionarios
  
  attr_reader :numerador, :denominador
  
  
  
  def initialize(numerador, denominador)
    @numerador, @denominador = numerador, denominador
  end
  
  
  def to_s
    "(#{@numerador},#{@denominador})"
  end
  
  
  
  
  
  def * (value)
    NumFraccionarios.new(@numerador * value, @denominador * value)
  end
  
  def -@
    NumFraccionarios.new(@numerador * -1, @denominador * -1)
  end
  
  def + (other)
      aux = mcm(@denominador, other.denominador)
      NumFraccionarios.new(((aux/@denominador)*@numerador) + ((aux/other.denominador) * other.numerador), aux)
  end
  
  def - (other)
      aux = mcm(@denominador, other.denominador)
	    NumFraccionarios.new(((aux/@denominador)*@numerador)-((aux/other.denominador)*other.numerador), aux)
  end
  
  def ** (other)
      NumFraccionarios.new(@numerador * other.numerador, @denominador * other.denominador)
  end
  
  def / (other)
      NumFraccionarios.new(@numerador * other.denominador, @denominador * other.numerador)
  end
  
  def mcd(num, den)
  	#Maximo comun divisor
  	if num == 0
		  den
	  else
		  mcd(den%num, num)
	end
  end
  
  def mcm(den1, den2)
  	#Minimo comun multiplo
  	(den1/mcd(den1,den2))*den2
  end  
  
  
  
end