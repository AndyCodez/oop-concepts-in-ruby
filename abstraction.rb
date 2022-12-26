class Animal
    def speak
        raise NotImplementedError, "#{self.class} #speak method is abstract and must be implemented in the subclass"
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

class Cat < Animal
    # missing implementation of the #speak method
end

duck = Duck.new
duck.speak #=> Quack!

dog = Dog.new
dog.speak #=> Bark!

cat = Cat.new
cat.speak #=> NotImplementedError