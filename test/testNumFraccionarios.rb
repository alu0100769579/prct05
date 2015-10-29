require 'lib/numFraccionarios'
require 'test/unit'

class TestNumNumFraccionariosarios < Test::Unit::TestCase
  
  def setup
    @origen = NumFraccionarios.new(2,6)
    @unidad = NumFraccionarios.new(3,9)
    
  end
  
  def test_equal
    assert_equal("(2,6)", @origen.to_s)
    
  end
  
  def test_mul_esc
    assert_equal("(15,45)", (@unidad*5).to_s)
  
  end
  
  def test_neg
    assert_equal("(-3,-9)", (-@unidad).to_s)
  
  end
  
  def test_sum
    assert_equal("(12,18)", (@origen + @unidad).to_s)
    
  end
  
  def test_rest
    assert_equal("(0,18)", (@origen - @unidad).to_s)
  
  end
  
  def test_mult
    assert_equal("(6,54)", (@origen ** @unidad).to_s)
    
  end
  
  def test_div
    assert_equal("(18,18)", (@origen / @unidad).to_s)
  end
    

end