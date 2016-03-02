require "minitest/autorun"
require "./exercise"

class SayHelloTest < Minitest::Test
  
  def setup
    @greeter = SayHello.new
  end

  def test_instantiated_with_no_name
    assert_nil @greeter.name
  end

  def test_greet
    @greeter.name = 'Overjoyed'
    assert_equal 'Hey, my name is Ruby. Nice to meet you Overjoyed.', @greeter.greet
  end

end
