class Integer
  def in_either_bounds?
    between?(65, 90) || between?(97, 122)
  end
end

def check_and_transform(ordinal_number, shift_factor)
  return ordinal_number unless ordinal_number.in_either_bounds?

  shifted_ordinal_number = ordinal_number + shift_factor

  unless shifted_ordinal_number.in_either_bounds?
    lower_limit, upper_limit = 65, 90  if ordinal_number.between?(65, 90)
    lower_limit, upper_limit = 97, 122 if ordinal_number.between?(97, 122)
    count = 0
    if shift_factor.positive? 
      ordinal_number.upto(upper_limit) { count += 1 }
      return lower_limit - (count - shift_factor)
    elsif shift_factor.negative?
      ordinal_number.downto(lower_limit) { count += 1 }
      return upper_limit + (count + shift_factor)
    else
      return ordinal_number
    end

  else
    return shifted_ordinal_number
  end
end

def caesar_cipher(string, shift_factor = 5)
  ascii_code_array = string.split('').map { |character| check_and_transform(character.ord, shift_factor) }

  return ascii_code_array.map(&:chr).join
end

#-- Tests by Output -----------------------------------------------------------------------------------------

puts caesar_cipher('ABCDEFGHIJKLMNOP', 1)
puts caesar_cipher('ABCDEFGHIJKLMNOP'.downcase, 1)

puts caesar_cipher('ABCDEFGHIJKLMNOP', -1)
puts caesar_cipher('ABCDEFGHIJKLMNOP'.downcase, -1)

puts caesar_cipher('WHERE ARE MY SLIPPERS?', -1)
puts caesar_cipher('Why are you mocking me?!', -2)

puts caesar_cipher('this is so low-key', 1)
puts caesar_cipher('What a string!', 5)
puts caesar_cipher('My name is... um, actually: I forgot. What was it?', 10)

puts caesar_cipher('Spare me! I beg of you, good sir (sobs)', 0)
