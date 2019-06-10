def soma (a, b)
    a + b
rescue Exception => e
    puts e.message
end

soma('10', 5)


def sub (c, d)
    c - d
rescue Exception => e
    puts 'Erro ao executar subtração'
end

sub(10, '5')