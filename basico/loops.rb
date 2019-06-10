5.times do |i|
    puts 'mensagem de times ' + i.to_s + ' vez(es)'
end

puts ''
init = 0
while init <= 10 do
    puts 'mensagem do while ' + init.to_s + ' vez(es)'
    init += 1
end

puts ''
for item in (0...10)
    puts 'mensagem do for ' + item.to_s + ' vez(es)'
end

puts ''
testArray = ['arrayItem1', 'arrayItem2', 'arrayItem3']
#puts testArray.class

testArray.each do |j|
    puts j
end