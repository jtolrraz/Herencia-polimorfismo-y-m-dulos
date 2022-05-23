# Dado los siguientes módulos:
module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end
module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

# 1.- Crear la clase Animal con un atributo nombre. Agregar un método getter para el atributo nombre. (1 Punto)
# 2.- Crear las clases Ave, Mamífero e Insecto. Ambas heredan de Animal. (1 Punto)
# 3.- Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave. (1 Punto)
# 4.- Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamífero. (1 Punto)
# 5.- Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto. (1 Punto)
# 6.- Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de definir las habilidades y tipo de alimentación de cada animal. (2 Puntos)

class Animal #Requerimiento 1
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal #Requerimiento 2
    include Habilidades::Volador #Requerimiento 6
    include Alimentacion
end
class Mamifero < Animal #Requerimiento 2
    include Habilidades #Requerimiento 6
    include Alimentacion
end
class Insecto < Animal #Requerimiento 2
    include Habilidades #Requerimiento 6
    include Alimentacion
end

class Pinguino < Ave #Requerimiento 3
    include Habilidades::Nadador #Requerimiento 6
    include Alimentacion::Carnivoro
end
class Paloma < Ave #Requerimiento 3
    include Habilidades::Volador #Requerimiento 6
    include Alimentacion::Herbivoro
end
class Pato < Ave #Requerimiento 3
    include Habilidades::Nadador #Requerimiento 6
    include Alimentacion::Herbivoro
end

class Perro < Mamifero #Requerimiento 4
    include Habilidades::Caminante #Requerimiento 6
    include Alimentacion::Carnivoro
end
class Gato < Mamifero #Requerimiento 4
    include Habilidades::Caminante #Requerimiento 6
    include Alimentacion::Carnivoro
end
class Vaca < Mamifero #Requerimiento 4
    include Habilidades::Caminante #Requerimiento 6
    include Alimentacion::Herbivoro
end

class Mosca < Insecto #Requerimiento 5
    include Habilidades::Volador #Requerimiento 6
    include Alimentacion::Carnivoro
end
class Mariposa < Insecto #Requerimiento 5
    include Habilidades::Volador #Requerimiento 6
    include Alimentacion::Herbivoro
end
class Abeja < Insecto #Requerimiento 5
    include Habilidades::Volador #Requerimiento 6
    include Alimentacion::Herbivoro
end


abeja=Abeja.new("nueva_abeja")
puts "------------------------"
puts "Soy una abeja y..."
puts abeja.volar
puts "y"
puts abeja.comer
puts "------------------------"