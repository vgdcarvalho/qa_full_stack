describe 'Forms' do
    it 'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        # comparar textos idênticos
        # expect(find('#flash').text).to eql 'Olá, Tony Stark. Você acessou a área logada!'

        # compara strings e vê se uma contém a outra
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        
        # vê se o elemento tem o texto
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'senha incorreta' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'invalid'

        click_button 'Login'

        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'usuário não cadastrado' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'steve'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end

end