class ContaCorrente
    attr_accessor :saldo

    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor)
        self.saldo -= valor
    end
end

describe ContaCorrente do
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200.00)
            end
            it 'então atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.saca(100.00)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
        end
    end
end