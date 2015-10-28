require 'lib/numFraccionarios'
require 'test/unit'

class TestNumNumFraccionariosarios < Test::Unit::TestCase
  
  def setup
    @origen = NumFraccionarios.new(2,7)
    @unidad = NumFraccionarios.new(3,4)
    
  end
  
  def test_simple
    assert_equal("(2,7)", @origen.to_s)
    assert_equal("(15,20)", (@unidad*5).to_s)
    assert_equal("(-3,-4)", (-@unidad).to_s)
    assert_equal("(29,28)", (@origen+@unidad).to_s)
    assert_equal("(-13,28)", (@origen-@unidad).to_s)

  end

end