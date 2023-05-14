# frozen_string_literal: true

class Animal
  attr_accessor :owner, :visits, :name

  def initialize(type, number_of_legs, name = 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new
    @visit = []
  end
  attr_reader :id, :type, :number_of_legs

  def speak
    'grrrr'
  end

  def bring_a_stick
    'Here is your stick: ---------' if @type == 'dog'
  end

  def make_a_web
    'wwww' if @type == 'spider'
  end

  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?(self)
  end
end
