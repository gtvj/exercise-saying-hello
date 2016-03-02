class SayHello

  attr_accessor :name, :response

  def respond_to_name(name)
    case true
      when @friends.include?(name)
        'Great to see you again'
      when @foes.include?(name)
        'Wish I hadn\'t met you'
      else
        'Nice to meet you'
    end
  end

  def greet
    @response = respond_to_name(@name)
    "Hey, my name is Ruby. #{@response} #{@name}."
  end

  def prompt_for_name
    puts "Hey, what's your name?"
    @name = gets
  end

  def initialize
    @friends = ['Matt']
    @foes = ['Judas']
  end

end