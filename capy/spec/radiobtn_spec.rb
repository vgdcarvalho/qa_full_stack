describe 'Botões de rádio', :radio do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'seleção por id' do
        choose('cap') # só funciona usando 'id'
    end

    it 'seleção por name' do
        find('input[value=the-avengers]').click # usando 'value' para identificar o elemento
    end

    after(:each) do
        sleep 3
    end

end