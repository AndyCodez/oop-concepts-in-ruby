class Animal
    def speak
        puts "I made a sound"
    end
end

class Duck < Animal
    def speak
        puts "Quack!"
    end
end

class Dog < Animal
    def speak
        puts "Bark!"
    end
end

duck = Duck.new
duck.speak #=> Quack!

dog = Dog.new
dog.speak #=> Bark!

puts dog.is_a? Dog #=> true
puts dog.is_a? Animal #=> true

puts duck.is_a? Duck #=> true
puts duck.is_a? Animal #=> true