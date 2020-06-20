def ceasar_cipher(string, number)
    alphabet_array_lower = [*('a'..'z')]
    alphabet_array_upper = [*('A'..'Z')]
    special_char_array = [*('!'..'?')]
    number_check = cipher_large_numbers(number)
    split_string = string.split(//)
       
    cipher_index_array = split_string.map do |n, i| 

            if n === ' '
                n      
            elsif special_char_array.index(n)
                n      
            elsif  alphabet_array_upper.index(n) && (alphabet_array_upper.index(n) + number_check) > 26
                alphabet_array_upper[alphabet_array_upper.index(n) + number_check - 26]
            elsif alphabet_array_upper.index(n)
                alphabet_array_upper[alphabet_array_upper.index(n) + number_check]   
            elsif  (alphabet_array_lower.index(n) + number_check) > 26 
                alphabet_array_lower[alphabet_array_lower.index(n) + number_check - 26] 
            else
                alphabet_array_lower[alphabet_array_lower.index(n) + number_check]
            end 
        end
    
    cipher = cipher_index_array.join('')
    p cipher
end

# Method to handle large cipher numbers

def cipher_large_numbers(number) 

    if number <= 26
          number
    else 
       number = number % 26
    end

end

ceasar_cipher('What a string!', 5)

