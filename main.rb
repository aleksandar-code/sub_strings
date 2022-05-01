require 'pry-byebug'
# Pseudocode is what to do => Problem solving is how to do.

# Create variables; word, dictionary. #
# The word is split in an array of chars
# Both are sent to the method as arguments
binding.pry

# What happpens in the method? #
# Iterate through word_array with an each loop

dictionary = ["I", "of", "and", "a", "to", "in", "is", "you", "that", "it", "he", "was", "for", "on", "are", "as", "with", "his", "they"]


def sub_strings(words_array, dictionary)
    binding.pry
    found_var_array = []
    stack_letters = ""
    the_hash = {}
    

    words_array.each do |word|

        word = word.split("")

        stack_letters = ""

            word.each do |letter|
            
                stack_letters += letter
                binding.pry
                
                if dictionary.include?(stack_letters)
                    found_var_array << stack_letters
                end
                
            end
        
      
    end

  
    
    print "#{found_var_array}\n\n"
    
end


words = gets.chomp
words_array = words.split(" ")

sub_strings(words_array, dictionary)



# What happens in the each loop? #
# Create variables; stack_letters, found_var_array

# Those will iterate over one word
# dictionary.include?(stack_letters) => if true
# give the stack_letters to found_var_array

# Then found_var_array.reduce(Hash.new(0))
# Print the result



 
# the_hash = found_var_array.reduce do |result, occurrence|
#     result[occurrence] +=1
#     result
    
# end