class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro ligou.'
    end
end

civic = Carro.new

puts civic.class

civic.nome = 'Civicão'

puts civic.nome
civic.ligar