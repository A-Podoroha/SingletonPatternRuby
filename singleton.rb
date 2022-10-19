class SingletonClass
  @inst = new

  private_class_method :new

  def self.inst
    @inst
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


obj1 = SingletonClass.inst
puts obj1.object_id
obj2 = SingletonClass.inst
puts obj2.object_id

obj1.greet
obj2.greet

puts "Are there 2 objects are equal?: " + (obj1 == obj2).to_s

obj1.name= "John"

obj1.greet
obj2.greet
