
# require "pry-byebug"

def check_and_transform(number, shift_factor)

    # binding.pry

    if number.between?(65, 90) || number.between?(97, 122)

        shifted_number = number + shift_factor

        unless shifted_number.between?(65, 90) || shifted_number.between?(97, 122)
            
            lower_limit, upper_limit = 65, 90  if number.between?(65, 90)
            lower_limit, upper_limit = 97, 122 if number.between?(97, 122)

            count = 0 
            
            if shift_factor.positive? 

                number.upto(upper_limit) {count += 1}
    
                number = lower_limit - (count - shift_factor)
            
            elsif shift_factor.negative? 

                number.downto(lower_limit) {count += 1}
    
                number = upper_limit + (count + shift_factor)
            
            else
                number
            end

        else # shifted number is in bounds ( 65 --> 90 or 97 --> 122)
            shifted_number
        end

    else # number isn't an ASCII alphabetical letter
        number
    end
    
end


def caesar_cipher(string, shift_factor = 5)

    ascii_code_array = string.split('').map {|character| check_and_transform(character.ord, shift_factor)}

    result_string = ascii_code_array.map {|code| code.chr} .join
end

















# puts caesar_cipher("ABCDEFGHIJKLMNOP", 1)
# puts caesar_cipher("ABCDEFGHIJKLMNOP".downcase, 1)

# puts caesar_cipher("ABCDEFGHIJKLMNOP", -1)
# puts caesar_cipher("ABCDEFGHIJKLMNOP".downcase, -1)

# puts caesar_cipher("WHERE ARE MY SLIPPERS?", -1)
# puts caesar_cipher("Why are you mocking me?!", -2)

# puts caesar_cipher("this is so low-key", 1)
# puts caesar_cipher("What a string!", 5)
# puts caesar_cipher("My name is... um, actually: I forgot. What was it?", 10)

# puts caesar_cipher("Spare me! I beg of you, good sir (sobs)", 0)

