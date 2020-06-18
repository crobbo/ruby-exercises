# array which stores the alphabet

# function which accepts two arguments. First is the string, second is the integercipher shift). 
# Finds the index of inputted letter, adds the cipher shift string storing it as x
# IF x is greater than > 26, retrun value at index x - 26
# ELSE returns value at index x


def ceasar_cipher(string, number)
    alphabet_array_lower = [*('a'..'z')]
    alphabet_array_upper = [*('A'..'Z')]
    split_string = string.downcase!.split(//)
    
        cipher_index_array = split_string.map do |n, i | 

        if n === ' '
            n             
        elsif  (alphabet_array_lower.index(n) + number) > 26 
            alphabet_array_lower[alphabet_array_lower.index(n) + number - 26]
             
        else
            alphabet_array_lower[alphabet_array_lower.index(n) + number]
        end 
    end
    
    ciphered_string = cipher_index_array.join('')
    p ciphered_string
    
end

ceasar_cipher('What a string', 5)


