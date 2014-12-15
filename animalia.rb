require 'rubygems'
require 'pry'


module Carnivore
  def eat!
    find_meat!
  end

  def tooth_type
    :sharp
  end
end

module Furry
  def hair_type?
    :fur
  end
end

module Oviparous
  def reproduction_method?
    :lays_eggs
  end
end

class Animal
  def alive?
    true
  end

  def can_eat?
    true
  end

  def eat!
    raise NotImplementedError.new("Not sure how to eat at this level")
  end
end

class Mammal < Animal
  def reproduction_method
    :live_birth
  end

  def blood_temperature
    :warm
  end

  def has_hair?
    true
  end

  def hair_type?
    raise NotImplementedError.new("Not sure what type of hair at this level")
  end
end

class Dog < Mammal
  include Carnivore
  include Furry

  def find_meat!
    go_to_dog_bowl!
  end

  def go_to_dog_bowl!
    puts "Sit at the dog bowl and howl.  Food comes soon."
  end
end

class Cat < Mammal
  include Carnivore
  include Furry

  def find_meat!
    hunt_mice!
  end

  def hunt_mice!
    puts "I tend to hunt mice and other rodents for my food."
  end
end

class DuckBilledPlatypus
  include Furry
  include Carnivore
  include Oviparous

  def find_meat!
    puts "I eat insects, mostly..."
  end
end
pry
