class NumFraccionarios
  
  attr_reader :numeradorerador, :denominador
  def initialize(numerador, denominador)
    @numerador, @denominador = numerador, denominador
  end
  
  def to_s
    "(#{@numerador}, #{@denominador})"
  end
  
  
  def mcm(numerador, denominador)
    NumFraccionarios.new(@numerador * other.denominador, @denominador * other.denominador)
  end  
  
  
  def * (value)
    NumFraccionarios.new(@numerador * value, @denominador * value)
  end
  
  def -@
    NumFraccionarios.new(@numerador * -1, @denominador * -1)
  end
  
  def + (other)
    NumFraccionarios.new(@numerador + other.numerador, @denominador + other.denominador)
  end
  
end