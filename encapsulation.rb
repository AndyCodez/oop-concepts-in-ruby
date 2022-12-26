class Person
    attr_accessor :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def speak
      puts "Hello, my name is #{@name} and I am #{@age} years old."
      protected_info
    end
  
    private
  
    def secret_info
      puts "I am a private method and can only be called from within the class."
    end
  
    protected
  
    def protected_info
      puts "I am a protected method and can be called from within the class or by a subclass."
    end
  end
  
  person = Person.new("John", 30)
  person.speak
  person.secret_info  # This will throw an error because secret_info is a private method
  person.protected_info  # This will throw an error because protected_info is a protected method
  
class Admin < Person

    def peek
        protected_info
    end
end

admin = Admin.new("Jeff", 20)
admin.speak 
#=> Hello, my name is Jeff and I am 20 years old.
#I am a protected method and can be called from within the class or by a subclass.

admin.peek #=> I am a protected method and can be called from within the class or by a subclass.
admin.secret_info # This will throw an error because secret_info is a private method
admin.protected_info # This will throw an error because protected_info is a protected method