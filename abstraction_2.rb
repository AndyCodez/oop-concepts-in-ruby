class Shape
    def initialize(x, y)
        @x = x
        @y = y
    end

    def move(x, y)
        # Implementation details for moving the shape are hidden from the user
        # The user only needs to know that they can move the shape by calling this method        
    end

    def area
        # This is an abstract method and must be implemented in the subclass
        raise NotImplementedError
    end
end

class Circle < Shape
    def initialize(x, y, radius)
        super(x, y)
        @radius = radius
    end

    def area
        Math::PI * @radius**2
    end
end

class Rectangle < Shape
    def initialize(x, y, length, width)
        super(x, y)
        @length = length
        @width = width
    end

    def area
        @length * @width
    end
end

c = Circle.new(0, 0, 5)
puts c.area #=> 78.53981633974483

r = Rectangle.new(0, 0, 10, 20)
puts r.area #=> 200

