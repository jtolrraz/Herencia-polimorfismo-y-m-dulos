class Person
    def initialize(first, last)
        @first_name = first
        @last_name = last
    end
end

class Student < Person
    def talk
        puts "¿Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end
Student = Student.new('Javier','Tolrraz')
Parent = Parent.new('Boris','Arco')
Teacher = Teacher.new('Cristian','Araya')
puts "----------------------------------------------------"
puts Student.talk
puts Student.introduce
puts "----------------------------------------------------"
puts Parent.talk
puts Parent.introduce
puts "----------------------------------------------------"
puts Teacher.talk
puts Teacher.introduce
puts "----------------------------------------------------"