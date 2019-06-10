class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

describe AvengersHeadQuarter do
    #ver se o item tem determinado valor
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list[0]).to eql 'Spiderman'
    end

    #ver se tem na lista
    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Hulk')
        hq.put('Thor')
        hq.put('Ironman')
        expect(hq.list).to include 'Thor'
    end

    #ver se lista tem algum item
    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Hulk')
        hq.put('Thor')
        hq.put('Ironman')
        expect(hq.list.size).to be > 0
    end

    #ver se lista tem algum item (usando boolean)
    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Hulk')
        hq.put('Thor')
        hq.put('Ironman')
        result = hq.list.size > 0
        expect(result).to be true
    end

    #ver se começa com determinado item
    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Ironman')
        expect(hq.list).to start_with('Thor')
    end

    #ver se termina com determinado item
    it 'Ironman deve ser o último da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Ironman')
        expect(hq.list).to end_with('Ironman')
    end

    #ver se contem determinada regex
    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
    end

    #ver se NÃO contem determinada regex
    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).not_to match(/Carvalho/)
    end

end