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
        elsif valor > self.limite
            self.mensagem = "Limite máximo por saque é de R$ #{self.limite}"
        else
            self.mensagem = 'Saldo insuficiente para saque :('
        end
    end
end

describe ContaCorrente do
    describe 'Saque' do
        context 'quando faz o saque' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200.00)
            end
            it 'então atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end

        context 'quando não tem saldo' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.saca(100.00)
            end
            it 'então exibe mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e saldo continua o mesmo' do
                expect(@conta.saldo).to eql 0.00
            end
        end

        context 'quando saldo não é suficiente' do
            before(:all) do
                @conta = ContaCorrente.new(500.00)
                @conta.saca(501.00)
            end
            it 'então exibe mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e saldo continua o mesmo' do
                expect(@conta.saldo).to eql 500.00
            end
        end

        context 'quando supera o limite de saque' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(@conta.limite + 1.00)
            end
            it 'então exibe mensagem' do
                expect(@conta.mensagem).to eql "Limite máximo por saque é de R$ #{@conta.limite}"
            end
            it 'e saldo continua o mesmo' do
                expect(@conta.saldo).to eql 1000.00
            end
        end
    end
end