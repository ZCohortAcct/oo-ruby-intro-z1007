require 'pry'

class Clothing
  # two method w/in a class are INSTANCE & CLASS
  # instance methods & var belongs to an instance
  # class methods & var belong to the class 

  # macros create instance methods AKA methods for instances//objs of the class
  attr_accessor :size
  attr_reader :color 
  # && attr_writer

  @@all = [] # store all objs created from class

  # creates: setter & writter methods && getter & reader

  # self refers back to the obj the method was called on
  def initialize(hue) # instance method, means using an instance of the class is being to involk the method
    @color = hue

    # puts sel # how to check the val of self

    @@all << self # storing each obj in arr
  end

  # creating a class READER method, method is for the class 
  # b/c trying to access a CLASS variable
  def self.all # class method
    puts self
    return @@all

    #?'s 1.1 @color || @size from withing a class method
    #?'s 1.2 if you can't how can you get access to the values 
  end

  # setter || writer size method
  # def size=(num)
  #   @size = num
  # end

  # # reader || getter size method
  # def size
  #   @size
  # end


  # things to add & build out 
  # ways to using the class variables
end

shirt = Clothing.new('black') # instinating a new  obj
shirt.size = 7 # setting size attr
pants = Clothing.new('blue')
pants.size = 6
socks = Clothing.new('green')
socks.size = 5


binding.pry