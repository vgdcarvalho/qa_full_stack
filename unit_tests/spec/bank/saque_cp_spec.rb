require_relative '../../app/bank.rb'

describe ContaPoupanca do
    describe 'Saque' do
        context 'quando faz o saque' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)
            end
            it 'então atualiza saldo' do
                expect(@cp.saldo).to eql 800.00
            end
        end

        context 'quando não tem saldo' do
            before(:all) do
                @cp = ContaPoupanca.new(0.00)
                @cp.saca(100.00)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e saldo continua o mesmo' do
                expect(@cp.saldo).to eql 0.00
            end
        end

        context 'quando saldo não é suficiente' do
            before(:all) do
                @cp = ContaPoupanca.new(400.00)
                @cp.saca(401.00)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e saldo continua o mesmo' do
                expect(@cp.saldo).to eql 400.00
            end
        end

        context 'quando supera o limite de saque' do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(@cp.limite + 1.00)
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql "Limite máximo por saque é de R$ #{@cp.limite}"
            end
            it 'e saldo continua o mesmo' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end
end