class SayHello

  attr_accessor :name
  
  def greet
    "Hey, my name is Ruby. Nice to meet you #{@name}."
  end

  def prompt_for_name
    puts "Hey, what's your name?"
    @name = gets
  end

end