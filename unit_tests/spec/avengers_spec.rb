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
end