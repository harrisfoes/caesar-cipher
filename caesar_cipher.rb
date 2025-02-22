
str = "Helloaa_yz"
A_to_z = "abcdefghijklmnopqrstuvwxyz"
Z_ord_val = "z".ord

def cipher(string, shift_value)

 ciphered = string.split('').map do | char |
    if A_to_z.include?(char.downcase)
      char_value = char.downcase.ord + shift_value
      pivoted_val = char_value > Z_ord_val ? char_value - 26 : char_value
      char == char.downcase ? pivoted_val.chr : pivoted_val.chr.upcase
    else
      char
    end
  end

  ciphered.join('')

end

puts cipher(str, 2)
puts cipher("What a string!", 5)
puts cipher(A_to_z.upcase, 5)
puts cipher(A_to_z, 5)






