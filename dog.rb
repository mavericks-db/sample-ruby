# frozen_string_literal: true

require './animal'

class Dog < Animal
  def initialize(color, name = 'Unknown')
    super('dog', 4, name)
    @color = color
  end

  def bring_a_stick
    'Here is your stick: ---------'
  end

  def speak
    'Woof, woof'
  end
end
