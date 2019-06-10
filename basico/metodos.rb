# Definindo função/método
def diga_olar
    puts 'olar'
end

# Chamando método (só dá certo pq é String?)
diga_olar

# atribuindo retorno do método a uma variável e printando
olar = diga_olar
puts olar

# É possível usar ou não o 'return'. Caso não use, o resultado da última instrução é retornado
def retorna_nome1
    'Nome x'
end

def retorna_nome2
    return 'Nome y'
end

# Atribuindo a variáveis e printando
nome1 = retorna_nome1
nome2 = retorna_nome2
puts nome1
puts nome2

def soma(num1, num2)
    total = num1 + num2
end

# Não é printado (Pq não é string?)
soma(1,1)

# Não deu certo também
soma(1,1).to_s

# É printado em ambos os casos
puts soma(2,1)

res = soma(4,0)
puts res

# Também não printa se fizer isso
def soma2(num1, num2)
    total = num1 + num2
    total = total.to_s
end

soma2(2,3)

# Concatenando argumento
def nome(nome)
    'O nome é ' + nome
end

nomezim = nome('Nome3')

nome('Nome1') # Não printa
puts nome('Nome2') # Printa
puts nomezim # Printa

argumento = gets.chomp
nomezim2 = nome(argumento)

nome(argumento) # Não printa
puts nome(argumento) # Printa
puts nomezim2 # Printa

nome(argumento + ' 2') # Não printa
puts nome(argumento + ' 2') # Printa
puts nomezim2 + ' 2' # Printa