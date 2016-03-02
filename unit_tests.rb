require "minitest/autorun"
require "./exercise"

class SayHelloTest < Minitest::Test
  
  def setup
    @greeter = SayHello.new
  end

  def test_instantiated_with_no_name
    assert_nil @greeter.name
  end

  def test_greet_friend
    @greeter.name = 'Matt'
    assert_equal 'Hey, my name is Ruby. Great to see you again Matt.', @greeter.greet
  end

  def test_greet_foe
    @greeter.name = 'Judas'
    assert_equal 'Hey, my name is Ruby. Wish I hadn\'t met you Judas.', @greeter.greet
  end

  def test_greet_unknown
    @greeter.name = 'Bob'
    assert_equal 'Hey, my name is Ruby. Nice to meet you Bob.', @greeter.greet
  end

end
