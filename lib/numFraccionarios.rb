class NumFraccionarios
  
  attr_reader :numeradorerador, :denominador
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
  
  
end