describe 'Caixa de seleção', :checkbox do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando opção' do
        check('thor') # check só funciona com 'id' ou 'name'
    end

    it 'desmarcando opção' do
        uncheck('antman') # uncheck só funciona com 'id' ou 'name'
    end

    it 'marcando com find().set(true)' do
        # para casos em que não se tem 'id' ou 'name' é bom usar 'value' dessa forma
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com find().set(false)' do
        # para casos em que não se tem 'id' ou 'name' é bom usar 'value' dessa forma
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 3
    end

end