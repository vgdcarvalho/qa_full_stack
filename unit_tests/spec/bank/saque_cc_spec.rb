require_relative '../../app/bank.rb'

describe ContaCorrente do
    describe 'Saque' do
        context 'quando faz o saque' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end
            it 'então atualiza saldo' do
                expect(@cc.saldo).to eql 800.00
            end
        end

        context 'quando não tem saldo' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e saldo continua o mesmo' do
                expect(@cc.saldo).to eql 0.00
            end
        end

        context 'quando saldo não é suficiente' do
            before(:all) do
                @cc = ContaCorrente.new(500.00)
                @cc.saca(501.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e saldo continua o mesmo' do
                expect(@cc.saldo).to eql 500.00
            end
        end

        context 'quando supera o limite de saque' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(@cc.limite + 1.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql "Limite máximo por saque é de R$ #{@cc.limite}"
            end
            it 'e saldo continua o mesmo' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end