begin
    #try
    file = File.open('./test')
    if file
        puts file.read
    end
rescue 
    #catch
    puts 'Sem exceção (arquivo sem extensão)'
end


begin
    #try
    file = File.open('./test')
    if file
        puts file.read
    end
rescue Exception => e
    #catch
    puts e
end

begin
    #try
    file = File.open('./test')
    if file
        puts file.read
    end
rescue Exception => e
    #catch
    puts e.message
end

begin
    #try
    file = File.open('./test')
    if file
        puts file.read
    end
rescue Exception => e
    #catch
    puts e.backtrace
end

begin
    #try
    file = File.open('./test.txt')
    if file
        puts file.read
    end
rescue Exception => e
    #catch
    puts e
end