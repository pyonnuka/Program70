cards = [0] * 100

(1..100).each do |i|
  number = i
  while(number <= 100) do
    cards[number - 1] += 1
    number += i
  end
end

cards.each_with_index do |num, i|
  puts i + 1 if num % 2 == 1
end
