class Conta
    attr_accessor :saldo, :mensagem, :limite

    def initialize(saldo)
        self.saldo = saldo
        self.mensagem = ""
        self.limite = 700.00
    end

    def saca(valor)
        if valor <= self.saldo && valor <= self.limite
            self.saldo -= valor
        elsif valor > self.limite
            self.mensagem = "Limite máximo por saque é de R$ #{self.limite}"
        else
            self.mensagem = 'Saldo insuficiente para saque :('
        end
    end
end

class ContaCorrente < Conta
    def initialize(saldo)
        super(saldo)
    end
end

class ContaPoupanca < Conta
    def initialize(saldo)
        super(saldo)
        self.limite = 500.00
    end
end