describe 'Upload de arquivo', :upload do

    before(:each) do
        @arquivo = Dir.pwd + '/spec/fixtures/test.txt' # Dir.pwd retorna o diretório atual DO PROJETO (nesse caso, até o /capy)
        @imagem = Dir.pwd + '/spec/fixtures/test.jpg'
        visit Capybara.app_host + '/upload'
    end

    it 'upload de arquivo de texto' do
        attach_file('file-upload', @arquivo)

        click_button('file-submit')

        div_arquivo = find('#uploaded-file') # procurando o campo com o nome do arquivo via 'id'
        expect(div_arquivo.text).to eql 'test.txt' # verificando se o nome do arquivo é o mesmo do q foi carregado
    end

    it 'upload de imagem', :upload_imagem do
        attach_file('file-upload', @imagem)

        click_button('file-submit')
        # sleep 5        
        # puts Capybara.default_max_wait_time

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/test.jpg' # vai ver se no 'src' do elemento no html tem o texto '/uploads/test.jpg'
    end

    after(:each) do
        sleep 3
    end
end