class Singleton
  @@inst = nil

  def self.inst
    if(@@inst == nil)
      @@inst = Singleton.new
    end
    @@inst
  end

  def name=(name)
    @name=name
  end

  def greet
    if (@name == nil)
      puts "say my name (cuz i don't know it)"
    else
      puts "hello. my name is #{@name}"
    end
  end
end


obj1 = Singleton.inst
obj2 = Singleton.inst

obj1.greet
obj2.greet

puts "Are there 2 objects are equal?: " + (obj1 == obj2).to_s

obj1.name= "John"

obj1.greet
obj2.greet
