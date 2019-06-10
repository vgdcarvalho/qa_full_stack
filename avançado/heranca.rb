class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} ligado!"
    end

    def buzinar
        puts 'Beep! Beep!'
    end
end

class Carro < Veiculo
    def dirigir
        puts "#{nome} iniciando o trajeto."
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciando o trajeto."
    end
end


fusca = Carro.new('Fusca', 'VW', '72')
fusca.ligar
fusca.buzinar
fusca.dirigir

civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

cg = Moto.new('GC', 'Honda', 'Titan')
cg.ligar
cg.buzinar
cg.pilotar