describe 'Caixa de opções', :dropdown do

    it 'selecionar item' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        select('Loki', from: 'dropdown') # só dá pra usar se tiver o id setado lá no html
        sleep 3
    end

    # isso aqui é pro caso de não ter o id do elemento pra usar
    it 'selecionar item com find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        drop = find('.avenger-list') # busca elementos da classe "avenger-list"
        drop.find('option', text: 'Tony Stark').select_option # seleciona uma opção do elemento da classe "avenger-list"
        sleep 3
    end

    it 'selecionar qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'

        drop = find('.avenger-list')
        drop.all('option').sample.select_option # escolhe um, aleatoriamente, da lista de itens retornados
        sleep 3
    end

end