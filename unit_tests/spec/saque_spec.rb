class ContaCorrente
    attr_accessor :saldo, :mensagem, :limite

    def initialize(saldo)
        self.saldo = saldo
        self.mensagem = ""
        self.limite = 700.00
    end

    def saca(valor)
        if valor <= self.saldo && valor <= self.limite
            self.saldo -= valor
        else 
            if valor > self.limite
                self.mensagem = 'Limite máximo por saque é de R$ 700'
            else
                self.mensagem = 'Saldo insuficiente para saque :('
            end
        end
    end
end

describe ContaCorrente do
    describe 'Saque' do
        context 'Saque em conta corrente' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200.00)
            end
            it 'então atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end

        context 'Deu ruim não tenho saldo' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.saca(100.00)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'saldo continua o mesmo' do
                expect(@conta.saldo).to eql 0.00
            end
        end

        context 'Tenho saldo mas não o suficiente' do
            before(:all) do
                @conta = ContaCorrente.new(500.00)
                @conta.saca(501.00)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'saldo continua o mesmo' do
                expect(@conta.saldo).to eql 500.00
            end
        end

        context 'Limite por saque' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(701.00)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end
            it 'saldo continua o mesmo' do
                expect(@conta.saldo).to eql 1000.00
            end
        end
    end
end