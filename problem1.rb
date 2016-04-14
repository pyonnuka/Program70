class String
  def palindrome?
    self.to_s == self.to_s.reverse
  end
end

number = 11
loop do
  if number.to_s(10).palindrome? &&
     number.to_s(2).palindrome? &&
     number.to_s(8).palindrome?
    puts number
    break
  end

  number += 2
end
