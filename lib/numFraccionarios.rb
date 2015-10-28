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
      NumFraccionarios.new(((@numerador * other.denominador) + (other.numerador * @denominador)), @denominador * other.denominador)
  end
  
  def - (other)
      NumFraccionarios.new(((@numerador * other.denominador) - (other.numerador * @denominador)), @denominador * other.denominador)
  end
  
  def ** (other)
      NumFraccionarios.new(@numerador * other.numerador, @denominador * other.denominador)
  end
  
end