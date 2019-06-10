numero1 = 0
numero2 = 0
numero3 = 0


puts 'Informe o número 1: '
numero1 = gets.chomp.to_i
puts 'Informe o número 2: '
numero2 = gets.chomp.to_i

# Adição
soma = numero1 + numero2

# Subtração
sub = numero1 - numero2

# Multiplicação
mult = numero1 * numero2

# Divisão
if numero2.zero?
    div = 'Divisão por zero'
else
    div = numero1 / numero2
end

puts 'Adição: ' + soma.to_s
puts 'Subtração: ' + sub.to_s
puts 'Multiplicação: ' + mult.to_s
puts 'Divisão: ' + div.to_s


# Comparações
maior = numero1 > numero2
menor = numero1 < numero2
igual1 = numero1 == numero2
igual2 = numero1.eql?(numero2)
dif = numero1 != numero2

puts 'Número 1 é maior que Número 2? - ' + maior.to_s
puts 'Número 1 é menor que Número 2? - ' + menor.to_s
puts 'Número 1 é igual a Número 2? - ' + igual1.to_s


if numero1 > numero2
    puts 'Número 1 é maior que Número 2'
else
    if numero1.eql?(numero2)
        puts 'Número 1 é igual a Número 2'
    else
        puts 'Número 1 é menor que Número 2'
    end
end